
%module irrlicht

%include "standard-typemaps.i"	// Non-Irrlicht stuff

// Irrlicht-specific stuff
BOTH(wchar_t* ":w-string");
BOTH(irr::core::string "(:by-value :irrstring)");
BOTH(irr::core::string& "(:reference :irrstring)");
BOTH(irr::core::string* "(:pointer :irrstring)");

%ignore *::createIrrXMLReader;
%ignore *::createIrrXMLReaderUTF16;
%ignore *::createIrrXMLReaderUTF32;
%ignore *::createReadFile;
%ignore *::createWriteFile;
%ignore *::createLimitReadFile;
%ignore *::createMemoryReadFile;

#include "template-typedefs1.i"	// once for the typemaps

#undef BOTH
#undef TYPEDEF

%{
#include "include/irrlicht.h"
using namespace irr;
using namespace core;
using namespace scene;
using namespace quake3;
%}

%include "include.SWIG/irrlicht.h"

using namespace irr;
using namespace core;
using namespace scene;
%extend irr::core::string {
  %template(fromCString) string<c8>;
}

// once for the instantiations
%include "template-typedefs2.i"

