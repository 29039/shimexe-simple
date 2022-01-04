<p align="center">
    <h1 align="center">shimexe-simple-instructions</h1>
</p>

What is a shim?

It's a little exe file which is used to run an exe file (or similar) which actually exists somewhere else

Useful if you want to drop in a file to an app to make it run something else

Or make a lnk Shortcut to an shim exe file which can be pinned to the Windows 10 Start Menu or Taskbar (same can't be done for a .bat file or similar, if you wanted to put one of those on the start menu)

## How to use

Download [github.com/ScoopInstaller/Scoop/supporting/shimexe/bin/shim.exe](https://github.com/ScoopInstaller/Scoop/blob/master/supporting/shimexe/bin/shim.exe)

Rename **shim.exe** to the desired filename, i.e. *example.exe*

Make a text file of the same filename in the same directory, ending with **.shim** instead of .exe. i.e. *example.shim*

Contents of the .shim file:

```
path = <the actual program to run>
args = <any arguments to run that program>
```
examples of example.shim:

```
path = example.bat
args = 
```
```
path = C:\app\example.exe
args = --help
```

```
path = powershell -ExecutionPolicy Bypass -File
args = example.ps1
```

Tip: If shim.exe does not give enough functionality, i.e. custom Current Directory (Working Folder), set Environment Variables, etc. then you can shim to a .bat file with that functionality (or use NircmD), and then use that to launch the real file.

Useful NirCmd commands to chain with:

http://nircmd.nirsoft.net/exec2.html - Ability to control the Working Folder, and run hidden or minimised

http://nircmd.nirsoft.net/execmd.html - Ability to run .bat file as hidden

## Credits

All the work done by [Luke Sampson's Scoop Project](https://github.com/lukesampson/scoop)

I just made the basic instructions on using shim.exe as a standalone app.

