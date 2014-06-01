
#include <cstdio>
#include <cstdlib>
#include <cwchar>

#ifdef WIN32
#define swprintf _snwprintf
#endif 

extern "C" wchar_t * strconv(char * in, int len) {
	wchar_t * ws = (wchar_t *)malloc((sizeof ws[0]) * (len + 1));
	swprintf(ws, len + 1, L"%hs", in);
	return ws;
}

