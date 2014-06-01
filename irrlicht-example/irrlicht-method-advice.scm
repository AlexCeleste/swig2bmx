
(set! interface-typemap
	(lambda (tag)
		(if (pair? tag)
			(cond ((eq? (cadr tag) ':irrstring) (make-max-type ":String" tag 'special 'irrstring))
				  (else #f) )
			(case tag
				((:w-string) (make-max-type ":String" tag 'special 'w-string))
				(else #f) ))))

(set! before-method-advice
	(lambda (class name args)
		(do ((args args (cdr args))
			 (c 0 (fx+ c 1)) )
			((null? args) #t)
			(let ((a (car args)))
				(when (is-special? a)
					(pr "\t\tLocal cs" c ":Byte Ptr = " (car a) ".ToCString(), ")
					(case (max-type-extra (cdr a))
						((irrstring) (pr "is" c ":Byte Ptr = new_fromCString_OVERLOAD_1(cs" c ")\n"))
						((w-string) (pr "ws" c ":Byte Ptr = _CStrToWStr(cs" c ", " (car a) ".Length)\n")) ))))))

(set! var-call-advice
	(lambda (arg n)
		(case (max-type-extra (cdr arg))
			((irrstring) (string-append "is" (number->string n)))
			((w-string) (string-append "ws" (number->string n))) )))

(set! after-method-advice
	(lambda (class name args)
		(do ((args args (cdr args))
			 (c 0 (fx+ c 1)) )
			((null? args) #t)
			(let ((a (car args)))
				(when (is-special? a)
					(pr "\t\tMemFree cs" c " ; ")
					(case (max-type-extra (cdr a))
						((irrstring) (pr "delete_path is" c "\n"))
						((w-string) (pr "_CStdFree ws" c "\n")) ))))))

(set! return-special-advice
	(lambda (class name rt)
		(string-append "String.FromCString(ret)") ))

(set! return-object-advice
	(lambda (class name rv)
		(if (and (fx>= (string-length name) 6)
				(string-ci=? "create" (substring name 0 6)) )
			(string-append (substring rv 0 (fx- (string-length rv) 1)) "._withDel(IReferenceCounted_drop))")
			rv) ))

(set! additional-imports
	(lambda ()
		(string-append "?MacOS\n"
			"Import \"-framework OpenGL\"\n"
			"?Win32\n"
			"Import \"-lopengl32\"\n"
			"?Linux\n"
			"Import \"-lGL\"\n"
			"?\n") ))

