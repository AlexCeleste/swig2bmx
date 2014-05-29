
Import "irrlicht-interface.bmx"
Import "wconv.o"

SuperStrict

Extern
Function CStoWS:Byte Ptr(cs:Byte Ptr, sz:Int) = "strconv"
Function CStdFree(mem:Byte Ptr) = "free"
End Extern

Local cdir:String = CurrentDir()
Local x:Int = 640, y:Int = 480
Local device:Byte Ptr = createDevice(EDT_OPENGL, new_dimension2du_OVERLOAD_1(Varptr(x), Varptr(y)), 32, 0, 0, 0, Byte Ptr(0))

Local msg:String = "Hello World! - Irrlicht Engine Demo"
IrrlichtDevice_setWindowCaption(device, CStoWS(msg.ToCString(), msg.length))

Local driver:Byte Ptr = IrrlichtDevice_getVideoDriver(device)
Local smgr:Byte Ptr = IrrlichtDevice_getSceneManager(device)
Local guienv:Byte Ptr = IrrlichtDevice_getGUIEnvironment(device)

iFileSystem_changeWorkingDirectoryTo(IrrlichtDevice_getFileSystem(device), new_fromCString_OVERLOAD_1(cdir.ToCString()))

msg = "Hello World! This is the Irrlicht Software renderer!"
IGUIEnvironment_addStaticText_OVERLOAD_5(guienv, CStoWS(msg.ToCString(), msg.Length), new_recti_OVERLOAD_1(10, 10, 260, 22))

Local mesh:Byte Ptr = ISceneManager_getMesh_OVERLOAD_0(smgr, new_fromCString_OVERLOAD_1("media/sydney.md2".ToCString()))
Local node:Byte Ptr = ISceneManager_addAnimatedMeshSceneNode_OVERLOAD_6(smgr, mesh)
If node
	ISceneNode_setMaterialFlag node, EMF_LIGHTING, False
	IAnimatedMeshSceneNode_setMD2Animation_OVERLOAD_0 node, EMAT_STAND
	ISceneNode_setMaterialTexture node, 0, IVideoDriver_getTexture_OVERLOAD_0(driver, new_fromCString_OVERLOAD_1("media/sydney.bmp".ToCString()))
EndIf

Local cam:Byte Ptr = ISceneManager_addCameraSceneNode_OVERLOAD_2(smgr, Byte Ptr(0), new_vector3df_OVERLOAD_1(0, 30, -40), new_vector3df_OVERLOAD_1(0, 5, 0))

While IrrlichtDevice_run(device)
	IVideoDriver_beginScene_OVERLOAD_2(driver, 1, 1, new_SColor_OVERLOAD_1(255, 100, 101, 140))
	ISceneManager_drawAll(smgr)
	IGUIEnvironment_drawAll(guienv)
	IVideoDriver_endScene(driver)
	Delay 10'IrrlichtDevice_yield device
Wend
IReferenceCounted_drop(device)

