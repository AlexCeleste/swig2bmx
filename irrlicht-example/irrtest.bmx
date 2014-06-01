
Import "irrlicht-interface.bmx"

SuperStrict

Local x:Int = 640, y:Int = 480
Local device:IrrlichtDevice = irrlicht.createDevice(EDT_OPENGL, Dimension2du.MakeWithWidthHeight(Varptr(x), Varptr(y)), 32, 0, 0, 0, Null)

device.setWindowCaption("Hello World! - Irrlicht Engine Demo")

Local driver:IVideoDriver = device.getVideoDriver()
Local smgr:ISceneManager = device.getSceneManager()
Local guienv:IGUIEnvironment = device.getGUIEnvironment()

guienv.addStaticText("Hello World! This is the Irrlicht OpenGL renderer!", RectI.MakeWithXYX2Y2(10, 10, 260, 22))

Local mesh:IAnimatedMesh = smgr.GetMesh(PathFromString("media/sydney.md2"))
Local node:IAnimatedMeshSceneNode = smgr.addAnimatedMeshSceneNode(mesh)

If node
	node.setMaterialFlag EMF_LIGHTING, False
	node.setMD2Animation EMAT_STAND
	node.setMaterialTexture 0, driver.getTexture(PathFromString("media/sydney.bmp"))
EndIf

Local cam:ICameraSceneNode = smgr.addCameraSceneNode(Null)
cam.SetPosition Vector3df.MakeWithNxNyNz(0, 30, -40)
cam.SetTarget Vector3df.MakeWithNxNyNz(0, 5, 0)

While device.Run()
	driver.beginScene(1, 1, SColor.MakeWithARGB(255, 100, 101, 140))
	smgr.drawAll()
	guienv.drawAll()
	driver.endScene()
	Delay 10'device.Yield()
Wend
