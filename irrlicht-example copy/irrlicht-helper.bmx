
' Secondary definitions for Irrlicht
' (This file is edited by hand only)

' These provide wstring support: convert a C string to a wstring, and free it

Extern
Function _CStrToWStr:Byte Ptr(cs:Byte Ptr, sz:Int) = "strconv"
Function _CStdFree(mem:Byte Ptr) = "free"
End Extern

' This doesn't exist in the library since it only expects char*
Function PathFromString:Path(s:String)
	Local cs:Byte Ptr = s.ToCString()
	Local p:Path = irrlicht.new_fromCString(cs)
	MemFree cs ; Return p
End Function

