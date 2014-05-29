
%module irrlicht

// Generic stuff
#define BOTH(D) %typemap(cin) D; %typemap(cout) D
#define TYPEDEF(N, ...) \
	%typemap(cin) __VA_ARGS__ "(:pointer \"" #N "\")"; %typemap(cout) __VA_ARGS__ "(:by-value \"" #N "\")"; \
	%typemap(cin) __VA_ARGS__& "(:pointer \"" #N "\")"; %typemap(cout) __VA_ARGS__& "(:reference \"" #N "\")"; \
	%typemap(cin) __VA_ARGS__* "(:pointer \"" #N "\")"; %typemap(cout) __VA_ARGS__* "(:pointer \"" #N "\")";

BOTH(bool ":bool");
BOTH(const bool& ":int-ref");
BOTH(char ":char");
BOTH(const char& ":char-ref");
BOTH(unsigned char ":uchar");
BOTH(const unsigned char& ":uchar-ref");
BOTH(short ":short");
BOTH(const short& ":short-ref");
BOTH(unsigned short ":ushort");
BOTH(const unsigned short& ":ushort-ref");
BOTH(int ":int");
BOTH(const int& ":int-ref");
BOTH(unsigned int ":uint");
BOTH(const unsigned int& ":uint-ref");
BOTH(long long ":long-long");
BOTH(const long long& ":long-long-ref");
BOTH(unsigned long long ":ullong");
BOTH(const unsigned long long& ":ullong-ref");
BOTH(float ":float");
BOTH(const float& ":float-ref");
BOTH(double ":double");
BOTH(const double& ":double-ref");
BOTH(enum SWIGTYPE ":enum");
BOTH(enum SWIGTYPE& ":enum-ref");
%typemap(cin) SWIGTYPE "(:pointer \"$1_ltype\")";
%typemap(cout) SWIGTYPE "(:by-value \"$1_ltype\")";
%typemap(cout) SWIGTYPE& "(:reference \"$1_ltype\")";
%typemap(cout) SWIGTYPE* "(:pointer \"$1_ltype\")";

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

%include "irrSWIG/irrlicht.h"

using namespace irr;
using namespace core;
using namespace scene;
%extend irr::core::string {
  %template(fromCString) string<c8>;
}

//#define TYPEDEF(N, ...) %template(N) __VA_ARGS__;
// once for the instantiations
%include "template-typedefs2.i"
//%template(vector3df) vector3d<irr::f32>;
//TYPEDEF(vector3df, vector3d<f32>)

