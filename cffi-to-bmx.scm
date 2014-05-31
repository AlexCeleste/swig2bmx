
; Gambit script to convert CFFI declarations to BlitzMax Extern declarations

(include "srfi-13.scm")

(define command-args #f)
(define stdout (current-output-port))
(define out-port (current-output-port))
(define (pr . a) (apply print port: out-port a))
(define (closeout) (close-output-port out-port) (set! out-port stdout))
(define (openwrite f) (set! out-port (open-output-file f)))


(define-syntax defm
	(syntax-rules (IGNORE)
		((_ n IGNORE) (define-syntax n (syntax-rules () ((_ . a) #f))))
		((_ n def) (define-syntax n def)) ))

(define-syntax when
  (syntax-rules ()
    ((_ condition do0! do1! ...) (if condition (begin do0! do1! ...)))))
(define-syntax unless
  (syntax-rules ()
    ((_ condition do0! do1! ...) (if (not condition) (begin do0! do1! ...)))))

; CL stuff we don't need
(defm cl:defmacro IGNORE)
(defm cl:eval-when IGNORE)

; C definition parser functions

; Get a low-level BlitzMax type label from a CFFI type label
(define (get-type-tag t . default)
	(set! default (if (null? default) ":Byte Ptr" (car default)))
	(if (pair? t)
		(case (car t)
			((:pointer :reference :by-value) ":Byte Ptr")
			(else ":<<UNKNOWN>>") )
		(case t
			((:char :unsigned-char :uchar :int8 :uint8) ":Byte")
			((:short :unsigned-short :ushort :int16 :uint16) ":Short")
			((:int :unsigned-int :uint :long :unsigned-long :ulong :int32 :uint32 :enum :bool) ":Int")
			((:float) ":Float")
			((:double) ":Double")
			((:long-long :unsigned-long-long :llong :ullong :int64 :uint64) ":Long")
			((:pointer :string :char-ref :uchar-ref) ":Byte Ptr")
			((:short-ref :ushort-ref) ":Short Ptr")
			((:int-ref :enum-ref :uint-ref) ":Int Ptr")
			((:long-long-ref :ullong-ref) ":Long Ptr")
			((:float-ref) ":Float Ptr")
			((:double-ref) ":Double Ptr")
			((:void) "")
			(else default) )))

; Constants (any type, standalone)
(define (max-defconst name val)
	(define (typeof v)
		(cond ((fixnum? v) "Int")
			  ((flonum? v) "Double")
			  ((number? v) "Long")
			  ((string? v) "String")
			  ((symbol? v) "String")
			  (else "<<UNKNOWN>>") ))
	(pr "Const " name ":" (typeof val) " = "
		(if (string? val) (string-append "\"" val "\"") val)
		"\n") )

; Getter funtions for C++ globals (by default, no setters, sorry)
(define cvars '())
(define (enqueue-cvar cname name type)
	(set! cvars (cons (list cname name type) cvars)) )
(define (emit-cvars)
	(define (emit cname name type)
		(pr "Function " name (get-type-tag type) "() = \"MAXGETTER_" cname "\"\n"))
	(pr "\nExtern\n\n")
	(for-each (lambda (v) (apply emit v)) cvars)
	(pr "\nEnd Extern\n\n") )

; Create global getter wrapper library
(define (emit-cvar-wrapper)
	(define (emit cname name type)
		(pr "  typeof(f(" cname ")) MAXGETTER_" name "() { return f(" cname "); }\n"))
	(pr "#include \"" file ".h\"\n\n"
		"template<typename T> T f(T x) { return x; }\n\n"
		"extern \"C\" {\n")
	(for-each (lambda (v) (apply emit v)) cvars)
	(pr "}\n") )

; Enumerations (types containing only constant ints)
(define unk-enums '())
(define (max-defenum name vals)
	(define (unknown-val n)
		(set! unk-enums (append unk-enums (list n)))
		"<<UNKNOWN>>")
	(pr "'enum " name "\n")
	(if (null? vals)
		#f
		(let loop ((rest (cdr vals))
				   (enum (car vals))
				   (val 0)
				   (prev ""))
			(define name
				(let ((n (symbol->string (if (list? enum) (car enum) enum))))
					(substring n 1 (string-length n)) ))
			(set! val (if (list? enum)
						  (if (or (> (length enum) 2) (pair? (cadr enum)))
						  	  (unknown-val name) (cadr enum))
						  val))
			(pr (if (equal? val "<<UNKNOWN>>") "'" ""))
			(pr "  Const " name ":Int = " val "\n")
			(if (null? rest)
				#f
				(loop (cdr rest)
					  (car rest)
					  (if (number? val) (+ 1 val) (string-append prev " + 1"))
					  name))))
	(pr "\n") )

; Extern function declarations
(define funcs '())
(define (enqueue-cfun cname name rtype argtypes)
	(set! funcs (cons (list cname name argtypes rtype) funcs)) )
(define (examine-overload n)
	(let* ((nl (string-length n))
		   (c (do ((c (- nl 1) (- c 1))
				   (l 0 (+ l 1)))
				  ((or (< c 0) (not (char-numeric? (string-ref n c)))) l)
				  #f) )
		   (st (- nl c)) )
		(if (and (> c 0)
				 (string=? (substring n (- st 6) st) "_SWIG_") )
			(substring n st nl)
			#f) ))
(define (emit-funcs)
	(define (build-args-list al)
		(if (null? al)
			""
			(let loop ((rst (cdr al)) (this (car al)) (str ""))
				(let* ((name (symbol->string (car this)))
					   (type (cadr this))
					   (arg (string-append "_" name (get-type-tag type))))
					(if (null? rst)
						(string-append str arg)
						(loop (cdr rst) (car rst) (string-append str arg ", ")) )))))
	(define (emit cname name argtypes rtype)
		(let* ((over (examine-overload cname))
			   (bname (string-append (symbol->string name)
			   		    (if over (string-append "_OVERLOAD_" over) ""))))
			(pr "Function " bname
				(get-type-tag rtype) "("
				(build-args-list argtypes)
			") = \"" cname "\"\n") ))
	(pr "\nPrivate\nExtern\n\n")
	(for-each (lambda (f) (apply emit f)) funcs)
	(pr "\nEnd Extern\nPublic\n\n") )


; C definition macros:
; translate the CFFI declarations into something we can use
(defm cl:defconstant
	(syntax-rules ()
		((_ n val) (max-defconst (quote n) (quote val))) ))
	
(defm cffi:defcvar
	(syntax-rules ()
		((_ (cn n) t) (enqueue-cvar (quote cn) (quote n) (quote t))) ))

(defm cffi:defcenum
	(syntax-rules ()
		((_ n . sl) (max-defenum (quote n) (quote sl))) ))

(defm cffi:defcfun
	(syntax-rules ()
		((_ (cn n) rt . at) (enqueue-cfun (quote cn) (quote n) (quote rt) (quote at))) ))

(defm cffi:defcunion	;Not required
	IGNORE)
(defm cffi:defcstruct	;Not required - types are rebuilt from the CLOS layer
	IGNORE)

(set! command-args (read))
(define file (symbol->string (car command-args)))

(pr "Wrapping: " file "\n")
(pr "With imports: ")
(for-each (lambda (lib) (pr lib " ")) (cdr command-args))
(pr "\n")

; Load the base procedures file, emit and list basic definitions
(openwrite (string-append file "-base.bmx"))

(pr "\n' " file " wrapper\n\n"
	"' This file was automatically generated by CFFI2BMX\n"
	"' from a CFFI wrapper generated by SWIG\n\n"
	"' This is a flat procedural base interface\n"
	"' It exists only to provide extern declarations for the high-level interface\n\n")

(load (string-append file ".lisp"))

(unless (null? unk-enums)
	(pr "Include \"" file ".extra-enums.bmx\"\n\n") )

(set! cvars (reverse cvars))
(emit-cvars)

(set! funcs (reverse funcs))
(emit-funcs)

(closeout)	;done generating -base.bmx

(unless (null? unk-enums)
	(pr "\n" (length unk-enums)
		" enum (constant) values could not be computed by CFFI2BMX\n"
		"A program to compute them for you has been written to " file
		".gen-enums.cpp\n"
		"You may need to tweak it slightly to get the right namespaces\n"
		"or #include paths. Run it and it will print the missing "
		"declarations.\n\n")
	(openwrite (string-append file ".gen-enums.cpp"))
	(pr "\n// Some enum values could not be inserted automatically\n"
		"// Compile and run this program with g++ and it will generate\n"
		"// the missing constants to paste into " file ".bmx\n\n"
		"#include <cstdio>\n"
		"#include \"" file ".h\"\n\n"
		"#define SHOWC(N) printf(\"Const \" #N \":Int = %d\\n\", N);\n\n"
		"int main() {\n")
	(for-each (lambda (n) (pr "  SHOWC(" n ");\n")) unk-enums)
	(pr "  return 0;\n}\n\n")
	(closeout) )

(unless (null? cvars)
	(pr (length cvars) " global variables were exported by " file "\n"
		"These will be made available through the accessor functions defined in\n"
		file ".cvar-wrapper.cpp\n\n")
	
	(openwrite (string-append file ".cvar-wrapper.cpp"))
	(emit-cvar-wrapper)
	(set! cvars #f)
	(closeout) )


; Try to coalesce overloads representing default parameters into single entries

(define-structure func cname name args aopt rtype)
(define (list->func l)
	(apply (lambda (c n a r) (make-func c (symbol->string n) a 0 r)) l) )

(define defaults (list (list->func (car funcs))))
(define (coalesce cname name args rtype)
	;Defaults follow each other in order starting with all params, so it's easy
	; to see if a function matches the pattern by comparing types and names
	(let ((prev (car defaults)) (name (symbol->string name)))
		(if (and (string-ci=? name (func-name prev)) (equal? rtype (func-rtype prev))
				 (let loop ((atl args) (ptl (func-args prev)))
					(cond ((null? ptl) #f)
						  ((null? atl) #t)
						  ((equal? (car atl) (car ptl))
							  (loop (cdr atl) (cdr ptl)) )
						  (else #f) )))
			(func-aopt-set! (car defaults) (fx+ (func-aopt (car defaults)) 1))
			(unless (and (string-ci=? name (func-name prev)) (equal? args (func-args prev)))
				(set! defaults (cons (make-func cname name args 0 rtype) defaults)) ))))	;Don't emit if the difference is constness
(for-each (lambda (f) (apply coalesce f)) (cdr funcs))
(set! funcs #f)

(define overloads (make-table size: 1024 init: '() test: string-ci=?))
(for-each
	(lambda (d)
		(let ((n (func-name d)))
			(table-set! overloads n (cons d (table-ref overloads n))) ))
	defaults)
	;overloads is now a table of names each keyed to a list of overloads, defaults not represented
(set! defaults #f)

; CLOS definition parser functions

(define maxified-names (make-table init: #f test: eq?))
(define (maxify-name name)
	(define (maxify name)
		(set! name	;substring from after the last :
			(do ((c (string-length name) (fx- c 1)))
				((or (= c 0) (char=? (string-ref name (fx- c 1)) #\:))
					(substring name c (string-length name)) )))
		(set! name  ;Capitalise after and remove each -
			(do ((c 0 (+ c 1))
				 (r 0 (if (char=? (string-ref name r) #\-) r (fx+ r 1)))
				 (u #t (if (char=? (string-ref name r) #\-) #t #f)) )
				((fx= c (string-length name)) (substring name 0 r))
				(let ((chr (string-ref name c)))
					(string-set! name r (if u (char-upcase chr) chr)) )))
		name)
	(case name
		((*) "Mul") ((/) "Div") ((%) "Rmdr") ((+) "Add") ((-) "Sub") ((^) "Pow")
		((!) "lNot") ((~) "bNot") ((<<) "lShift") ((>>) "rShift")
		((<) "Less") ((>) "Greater") ((<=) "lEq") ((>=) "gEq") ((==) "Eq") ((!=) "nEq")
		((=) "_assign") ((&) "bitAnd") ((|\||) "bitOr")
		((+=) "AddAssign") ((-=) "SubAssign") ((*=) "MulAssign") ((/=) "DivAssign")
		((%=) "RmdrAssign") ((<<=) "lShiftAssign") ((>>=) "rShiftAssign")
		((&=) "bitAndAssign") ((^=) "PowAssign") ((|\|=|) "bitOrAssign")
		((new) "Make")
		((end to next exit field forever local then ptr) (string-append "_" (symbol->string name)))
		(else
			(let ((n (table-ref maxified-names name)))
				(if n
					n
					(begin (set! n (maxify (symbol->string name)))
						(table-set! maxified-names name n)
						n) )))))

; Declaration for a class
(define classes '())
(define objtypes (make-table test: string-ci=? init: #f))
(define-structure class name base methods)
(define (enqueue-class name base)
	(let* ((name (maxify-name name))
		   (nc (make-class name (maxify-name base) (make-table test: equal?))))
		(table-set! objtypes name name)
		(set! classes (cons nc classes)) ))

; Declaration of a method
(define (enqueue-method name lname . a)
	(table-set! (class-methods (car classes))
				(cond ((and (eq? name '-) (= (length (car a)) 1)) 'Neg)
					  ((pair? name) (string-append (car name) (maxify-name (cdr name))))
					  (else name) )
				lname) )

; CLOS definition macros:
(defm cl:defclass	;Class declarations
	(syntax-rules ()
		((_ name (base) flds) (enqueue-class (quote name) (quote base)))
		((_ name () flds) (enqueue-class (quote name) (string->symbol basetype))) ))
(defm cl:defmethod	;Method declarations
	(syntax-rules (initialize-instance)
		((_ (cl:setf name) args (lname . cargs)) (enqueue-method (cons "set" (quote name)) (quote lname)))
		((_ () args (lname . cargs)) (enqueue-method 'Call (quote lname)))	;Syntax error in -CLOS
		((_ name args (lname . cargs)) (enqueue-method (quote name) (quote lname) (quote args)))
		((_ initialize-instance . rst) (enqueue-method 'new #f)) ))
(defm cl:shadow		;Overloaded operator declarations, in this case
	IGNORE)

; Load the CLOS definitions file and build the high-level OO interface
(openwrite (string-append file "-interface.bmx"))
(pr "\n' " file " wrapper\n\n"
	"' This file was automatically generated by CFFI2BMX\n"
	"' from a CFFI wrapper generated by SWIG\n\n"
	"' This is the high-level/OOP interface - use this where possible\n\n"
	"Import \"" file "_wrap.o\"\n"
	"Import \"" file ".cvar-wrapper.o\"\n")
(let ((helper-bin (string-append file ".help-wrap.o")))
	(when (file-exists? helper-bin)
		(pr "Import \"" helper-bin "\"\n") ))
(for-each (lambda (lib) (pr "Import \"" lib "\"\n")) (cdr command-args))
(pr "\nSuperStrict\n\n")
	
(pr "Include \"" file "-base.bmx\"\n")
(let ((helper-file (string-append file "-helper.bmx")))
	(when (file-exists? helper-file)
		(pr "Include \"" helper-file "\"\n") ))
(pr "\n")

(define basetype (string-append "_" file "_Object"))
(pr "Type " basetype " Abstract\n"
	"	Field _ptr:Byte Ptr\n"
	"	Field _del(_:Byte Ptr)\n"
	"	Function _defaultFree(p:Byte Ptr) Final\n"
	"	End Function\n"
	"	Function _getPtr:Byte Ptr(o:" basetype ") Final\n"
	"		If o Then Return o._ptr ; Else Return Byte Ptr(0)\n"
	"	End Function\n"
	"	Method New()\n"
	"		_del = " basetype "._defaultFree\n"
	"	End Method\n"
	"	Method Delete()\n"
	"		_del(_ptr)\n"
	"	End Method\n"
	"	Method Compare:Int(with:Object)\n"
	"		If " basetype "(with) Then Return _ptr - " basetype "(with)._ptr ; Else Return with.Compare(self)\n"
	"	End Method\n"
	"	Method _withPtr:" basetype "(_p:Byte Ptr) Final\n"
	"		_ptr = _p ; Return Self\n"
	"	End Method\n"
	"	Method _withDel:" basetype "(_f:Byte Ptr) Final\n"
	"		_del = _f ; Return Self\n"
	"	End Method\n"
	"	Method _Claim(o: " basetype ") Final\n"
	"		_del = o._del ; o._del = _defaultFree\n"
	"	End Method\n"
	"End Type\n\n")

(load (string-append file "-clos.lisp"))
(set! classes (reverse classes))

(define (before-method-advice c n a)
	#f)
(define (var-call-advice arg n)
	(string-append (car arg) (number->string n)) )
(define (after-method-advice m)
	#f)
(define (return-special-advice c n r)
	#f)
(define (return-object-advice c n r)
	r)
(define (interface-typemap t)
	#f)
;Load custom method advice
(let ((advice-file (string-append file "-method-advice.scm")))
	(if (file-exists? advice-file)
		(load advice-file)
		#f) )

; Get a high-level BlitzMax type from a CFFI type tag: '(tagstr orig description . extra)
(define-structure max-type tag orig desc extra)
(define (max-type-definition tag)
	(define (object-type tag)
		(let ((t (cadr tag)))
			(cond ((and (string-index t #\( ) (string-index t #\) ))
					(make-max-type ":Byte Ptr" tag 'prim #f))
				  ((and (string-index t #\<) (string-index t #\>))
				  	;(make-max-type (string-append ":template{" t "}") tag 'prim #f))
				  	(make-max-type (string-append ":Byte Ptr") tag 'prim #f))
				  ((table-ref objtypes (strip-c++isms t))
				  	  => (lambda (t) (make-max-type (string-append ":" t) tag 'object #f)) )
				  (else
				  	(make-max-type ":Byte Ptr" tag 'prim #f) ))))
	(define (basic-type tag)
		(make-max-type (get-type-tag tag ":<<UNKNOWN>>") tag 'prim #f) )
	(let* ((t0 (interface-typemap tag))
		   (t1 (if t0 t0 (if (pair? tag) (object-type tag) #f))) )
		(if t1 t1 (basic-type tag)) ))

(define (strip-c++isms s)
	(let* ((ts (string-index s #\<))
		   (s (if ts (substring s 0 ts) s))
		   (ps (string-index-right s #\:))
		   (s (if ps (substring s (+ 1 ps) (string-length s)) s))
		   (ss (string-index s #\space)) )
		(substring s 0 (if ss ss (string-length s))) ))

(define (default-param-value t)
	(cond ((string-ci=? t ":Int") "-2147483648")
		  ((string-ci=? t ":Long") "-9223372036854775808")
		  ((string-ci=? t ":Byte") "-128")
		  ((string-ci=? t ":Short") "-32768")
		  ((or (string-ci=? t ":Float") (string-ci=? t ":Double")) "-1e100000")
		  (else "Null") ))

(define clash-list #f)
(define omitted-warning '())
(define (is-special? a)
	(eq? (max-type-desc (cdr a)) 'special) )
(define (is-object? a)
	(eq? (max-type-desc (cdr a)) 'object) )
(define (is-primitive? a)
	(eq? (max-type-desc (cdr a)) 'prim) )

(define (emit-proc-body class-name mname mdef is-overload is-method is-ctor)
	(define (emit-parameters pl dct)
		(unless (null? pl)
			(let loop ((pl pl) (dct (fx- (length pl) dct)))
				(let* ((nx (car pl)) (t (max-type-tag (cdr nx))))
					(pr (car nx) t)
					(if (fx< dct 1) (pr " = " (default-param-value t)) #f)
					(unless (null? (cdr pl))
						(pr ", ")
						(loop (cdr pl) (fx- dct 1)) )))))
	(define (extend-name mname args aopt . retry)
		(unless (null? args)
			(set! mname (string-append mname "With"))
			(for-each
				(lambda (p)
					(set! mname (string-append mname (capitalize (tag-to-name
							(if (null? retry)
								(car p)		;Varnames by default
								(let* ((t (max-type-tag (cdr p))) (sp (string-index t #\space)))
									(if sp
										(begin (set! t (string-append t)) (string-set! t sp #\_) t)
										t) )))))))
				(if (fx> aopt 0) (reverse (list-tail (reverse args) aopt)) args) ))
		mname)
	(define (capitalize s)
		(string-set! s 0 (char-upcase (string-ref s 0)))
		s)
	(define (tag-to-name tag)
		(substring tag 1 (string-length tag)) )
	(define (is-value rt)
		(let ((orig (max-type-orig rt)))
			(and (pair? orig) (eq? (car orig) ':by-value)) ))
	(define (var-call arg n)
		(cond ((is-object? arg) (string-append "p" (number->string n)))
			  ((is-special? arg) (var-call-advice arg n))
			  (else (car arg)) ))
	(define (cat-args args ct st)
		(do ((ct ct (fx- ct 1))
			 (n st (fx+ n 1))
			 (args args (cdr args))
			 (str "") )
			((fx= ct 0) str)
			(set! str (string-append str (var-call (car args) n) (if (fx= 1 ct) "" ", "))) ))
	(define (func-maxname f inc)
		(let ((over (examine-overload (func-cname f))) (lname (func-name f)))
			(if over
				(string-append lname "_OVERLOAD_" (number->string (fx+ inc (string->number over))))
				lname) ))
	
	(let* ((rtype (max-type-definition (func-rtype mdef)))
		   (is-void (eq? (func-rtype mdef) ':void))
		   (args0 (map
		   		   (lambda (a)
		   		   	   (cons (string-append "_" (symbol->string (car a))) (max-type-definition (cadr a))) )
		   		   (func-args mdef) ))
		   (args (if (and (not (null? args0)) (string=? (caar args0) "_self"))
		   		   (cdr args0) args0) )
		   (max-name (if is-overload (extend-name mname args (func-aopt mdef)) mname)) )
		(when (table-ref clash-list max-name)
			(set! max-name (extend-name mname args (func-aopt mdef) 'retry)) )
		(if (table-ref clash-list max-name)
			(set! omitted-warning (cons (cons class-name max-name) omitted-warning))
			(begin
				(table-set! clash-list max-name #t)
				(pr (if (and is-method (not is-ctor)) "	Method " "	Function ")
					max-name (max-type-tag rtype) "(")
				(emit-parameters args (func-aopt mdef))
				(pr ")\n")
				
				(before-method-advice class-name max-name args)
				(do ((args args (cdr args))
					 (c 0 (fx+ c 1)) )
					((null? args) #t)
					(let ((a (car args)))
						(when (is-object? a)
							(pr "\t\tLocal p" c ":Byte Ptr = " basetype "._getPtr(" (car a) ")\n") )))
				
				(unless is-void	;Declare return slot
					(pr "		Local _ret" (if (eq? (max-type-desc rtype) 'prim) (max-type-tag rtype) ":Byte Ptr")
						(if (fx= 0 (func-aopt mdef)) " = " "\n") ))
				
				(let* ((has-self (and is-method (not is-ctor)))
					   (args (if has-self (cons (cons "Self._ptr" (make-max-type "" #f 'prim #f)) args) args))
					   (la (length args))
					   (stct (if has-self -1 0))
					   (aopt (func-aopt mdef)) )
					(if (fx= 0 aopt)	;Call wrapper
						(pr (if is-void "\t\t." ".") (func-maxname mdef 0) "(" (cat-args args la stct) ")\n")
						(begin
							(pr "\t\t")
							(do ((aopt aopt (fx- aopt 1))
								 (narg (list-tail args (fx- la aopt)) (cdr narg)) )
								((fx= aopt 0) #t)
								(pr "If " (caar narg) " = " (default-param-value (max-type-tag (cdar narg))) "\n\t\t\t"
									(if is-void "." "_ret = .") (func-maxname mdef aopt) "(" (cat-args args (fx- la aopt) stct)
									")\n\t\tElse") )
							(pr "\n\t\t\t" (if is-void "." "_ret = .") (func-maxname mdef 0) "(" (cat-args args la stct) ")\n\t\tEndIf\n") )))
						
				(after-method-advice class-name max-name args)
				(unless is-void	;Actually return
					(pr "		Local rval" (max-type-tag rtype) " = "
						(case (max-type-desc rtype) 
							((special) (return-special-advice class-name max-name rtype))
							((prim) "_ret")
							((object)
								(return-object-advice class-name max-name
									(let ((tn (tag-to-name (max-type-tag rtype))))
										(string-append tn
											"(New _" tn "._withPtr(_ret)"
											(if (or is-ctor (is-value rtype))
												(string-append "._withDel(delete_" tn "))")
												")") ))))))
					(if (eq? (max-type-desc rtype) 'object)
						(pr "\n\t\tIf rval._ptr Then Return rval ; Else Return Null\n")
						(pr " ; Return rval\n") ))
				(pr (if (and is-method (not is-ctor)) "	End Method\n" "	End Function\n")) ))))

(define (sort-overloads fs is-method)
	(define (is-nullary f)
		(let* ((args (func-args f)) (al (if is-method (cdr args) args)))
			(null? al) ))
	(if (is-nullary (car fs))
		fs
		(let loop ((0ary #f) (fs (reverse fs)) (ret '()))
			(if (null? fs)
				(if 0ary (cons 0ary ret) ret)
				(if (is-nullary (car fs))
					(loop (car fs) (cdr fs) ret)
					(loop 0ary (cdr fs) (cons (car fs) ret)) )))))

(for-each	;Emit implementations
	(lambda (c)
		(pr "Type " (class-name c) " Extends " (class-base c) " Abstract\n")
		(pr "\tFunction _Cast:" (class-name c) "(o: " basetype ")\n"
			"\t\tReturn " (class-name c) "(New _" (class-name c) "._withPtr(o._ptr))\n"
			"\tEnd Function\n")
		(table-for-each
			(lambda (mname lname)
				(set! clash-list (make-table test: string=? init: #f))
				(let* ((is-ctor (not lname))
					   (lname (if lname
								  (symbol->string lname)
								  (string-append "new_" (class-name c))))
					   (mname (if (symbol? mname) (maxify-name mname) mname))
					   (mdef (sort-overloads (table-ref overloads lname) (not is-ctor))) )
					(table-set! overloads lname)
					(emit-proc-body (class-name c) mname (car mdef) is-ctor #t is-ctor)
					(for-each
						(lambda (d) (emit-proc-body (class-name c) mname d #t #t is-ctor))
						(cdr mdef) )))
			(class-methods c) )
		(class-methods-set! c #f)
		(table-set! overloads (string-append "delete_" (class-name c)))
		(pr "End Type\n\n") )
	classes)

(pr "\nType " file " Final\n")

(set! clash-list (make-table test: string=? init: #f))
(table-for-each  ;Emit public global functions (everything left in overloads list)
	(lambda (lname fs)
		(set! fs (sort-overloads fs #f))
		(emit-proc-body file lname (car fs) #f #f #f)
		(for-each (lambda (f) (emit-proc-body file lname f #t #f #f)) (cdr fs)) )
	overloads)
(pr "End Type\n\n")
(set! clash-list #f)

(pr "\nPrivate\n\n")
(for-each	;Emit Final seal declarations
	(lambda (c)
		(pr "Type _" (class-name c) " Extends "
			(class-name c) " Final ; End Type\n") )
	classes)
(pr "\n")

(closeout)

(unless (null? omitted-warning)
	(pr "Warning: the following overloads could not be disambiguated and were\n"
		"not emitted for all types:\n")
	(for-each
		(lambda (n) (pr "  " (car n) "." (cdr n) "\n"))
		(reverse omitted-warning) ))


