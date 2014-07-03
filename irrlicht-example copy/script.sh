#!/bin/bash
# Script to automate wrapping Irrlicht (1.8.1) for BlitzMax

# copy header tree
	cp -r irrlicht-1.8.1/include include
	patch -p0 < irrlicht.SWIG.diff
	mv include include.SWIG
# comment out erroneous declarations (private types, ambiguous calls, attributes)
# redeclare some structs as classes so they appear in the CLOS interface (IVertexManipulator)
	cp -r irrlicht-1.8.1/include include

# automatically scan for template typedefs to build %template list
	pcregrep -h '^[ \t]*typedef\s.*?<.*?;' include.SWIG/* > template-typedefs1.i
# comment XML*, Node, position2d, tQ3EntityList, stringc, stringw
	for t in tQ3EntityList IXMLReader IXMLReaderUTF8 Node stringc stringw char16 char32 IrrXMLReader IrrXMLReaderUTF16 IrrXMLReaderUTF32 position2df position2di ; do \
		sed -i ".irrlicht.bak" -e "s/^.*\(typedef[[:blank:]]*[^;]*>[[:blank:]]*$t;\)/\/\/\1/g" template-typedefs1.i ;\
	done
	cp template-typedefs1.i template-typedefs2.i
	sed -i ".irrlicht.bak" -e 's/^[[:blank:]]*typedef[[:blank:]]*\([^;]*\)>[[:blank:]]*\([^;]*\);/TYPEDEF(\2, \1>)/g' template-typedefs1.i
	sed -i ".irrlicht.bak" -e 's/^[[:blank:]]*typedef[[:blank:]]*\([^;]*\)>[[:blank:]]*\([^;]*\);/%template(\2) \1>;/g' template-typedefs2.i

# run swig
	swig -c++ -includeall -ignoremissing -fvirtual -cffi -noswig-lisp irrlicht.i

# build wrapper library
	g++ -Os -m32 -D_IRR_STATIC_LIB_ -c -w irrlicht_wrap.cxx
# build helper library
	g++ -Os -m32 -c irrlicht.help-wrap.cpp

# correct .lisp syntax (remove #. , [] -> aRef)
	sed -i ".irrlicht.bak" -e 's/#\.//g' irrlicht.lisp
	sed -i ".irrlicht.bak" -e 's/\[\]/aRef/g' irrlicht-clos.lisp

# run cffi2bmx
	echo "(irrlicht libIrrlicht.a)" | gsi -e '(load "~~/lib/syntax-case")' cffi-to-bmx.scm

# correct include path and namespaces for irrlicht.gen-enums.cpp, then gen enums
	sed -i ".irrlicht.bak" -e 's/#include "irrlicht.h"/#include "include\/irrlicht.h"\
using namespace irr;using namespace scene;using namespace io;using namespace quake3;/g' irrlicht.gen-enums.cpp
	g++ -D_IRR_STATIC_LIB_ irrlicht.gen-enums.cpp -o irrlicht.gen-enums && ./irrlicht.gen-enums > irrlicht.extra-enums.bmx
	rm irrlicht.gen-enums

# fill in cvar wrapper functions with irrlicht.cvar-wrapper.cpp
	sed -i ".irrlicht.bak" -e 's/#include "irrlicht.h"/#include "include\/irrlicht.h"\
using namespace irr;using namespace core;using namespace scene;using namespace io;using namespace quake3;using namespace video;using namespace gui;/g' irrlicht.cvar-wrapper.cpp
	g++ -Os -m32 -D_IRR_STATIC_LIB_ -c -w irrlicht.cvar-wrapper.cpp -o irrlicht.cvar-wrapper.o

# make final manual corrections to BMX code in response to errors (duplicate identifiers, Pi)
	sed -i ".irrlicht.bak" -e "s/Const EGUIET_FORCE_32_BIT/'Const EGUIET_FORCE_32_BIT/g" irrlicht-base.bmx
	sed -i ".irrlicht.bak" -e "s/Const EGST_COUNT/'Const EGST_COUNT/g" irrlicht-base.bmx
	sed -i ".irrlicht.bak" -e "s/Function PI:/'Function PI:/g" irrlicht-base.bmx
# ICameraSceneNode should extend ISceneNode by default
	sed -i ".irrlicht.bak" -e 's/Type IcameraSceneNode Extends IeventReceiver/Type IcameraSceneNode Extends IsceneNode/g' irrlicht-interface.bmx

# clean up
	rm -rf include include.SWIG
	rm template-typedefs1.i template-typedefs2.i irrlicht_wrap.cxx irrlicht.lisp irrlicht-clos.lisp irrlicht.cvar-wrapper.cpp irrlicht.gen-enums.cpp
	for f in *.irrlicht.bak ; do rm "$f" ; done

# build irrlicht (build is not automated by me)
#   eradicate duplicate symbols in libpng/pngerror.c
#   comment out [NSApp finishLaunching]; to allow GUI build on OSX
	patch -p0 < irrlicht.project.diff
#   set all optimisation options to -Os only, build release/static, 32-bit only

# ready to use!


