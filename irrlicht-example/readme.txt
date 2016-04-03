
swig2bmx: Irrlicht example
==========================

Follow these instructions to build an Irrlicht wrapper for BlitzMax from scratch
using swig2bmx!


0) make sure you meet all the requirements! You will need the following:
	- BlitzMax (duh)
	- SWIG (3.0 or newer)
	- Gambit Scheme (4.7 or newer)
	- a bash environment with usual utilities (cp, diff, pcregrep etc.)
	- GCC-compatible C++ compiler (do not use Visual Studio)

1) Download Irrlicht version 1.8.3 as a zip file (example is tied to 1.8.3
	for now)

2) Extract the Irrlicht zip to this folder (so that "irrlicht-1.8.3" is one of
	the subfolders here)

3) Copy the three "portable" swig2bmx files from the root folder (above this):
	- cffi-to-bmx.scm
	- srfi-13.scm
	- standard-typemaps.i
	Place them in this folder.

4) Run script.sh from the terminal. (This could take a few minutes.)

5) Use your platform's build tools to build libIrrlicht.a using the version in
	this folder (it has been patched to be Max-compatible by script.sh). Make
	sure to build in release mode, static library, 32-bit only. For tools other
	than Xcode, make sure to check that optimisation is set to -Os only.

  5.5) copy libIrrlicht.a from wherever your compiler put it to this folder.

6) You can now run irrtest.bmx, which is the Irrlicht "Hello World" tutorial!
	We're done!


The thing to bear in mind is that swig2bmx isn't really a "program"; it needs to
work around the library to be built. That's why only three files (although they
are the largest) are actually "portable" to wrap other libraries: a lot of stuff
needs to be coded around Irrlicht specifically. It's really more like writing a
new version of swig2bmx for every library you want to wrap. This is the one for 
Irrlicht. It's still pretty simple though.

If you just want to see the processed files without running the script, you can
download them separately from GitHub in the "intermediate sources" release.

If you actually just wanted to use Irrlicht with BlitzMax, and don't care about
wrapping and don't want to install all this rubbish, you can download prebuilt
binaries separately from GitHub in the "Windows prebuilt" and
"Mac OS X prebuilt" releases.


