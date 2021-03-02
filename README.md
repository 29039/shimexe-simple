<p align="center">
    <h1 align="center">shimexe-simple</h1>
</p>
- - -

What is a shim?

It's a little exe file which is used to run an exe file (or similar) which actually exists somewhere else

Useful if you want to drop in a file to an app to make it run something else

Or make a lnk Shortcut to an shim exe file which can be pinned to the Windows 10 Start Menu or Taskbar (same can't be done for a .bat file or similar, if you wanted to put one of those on the start menu)

## How to use

Download [supporting/shimexe/bin/shim.exe](https://github.com/29039/shimexe-simple/blob/master/supporting/shimexe/bin/shim.exe)

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

## Credits

All the work done by [Luke Sampson's Scoop Project](https://github.com/lukesampson/scoop)

I just cleaned up the repo and give basic instructions on using shim.exe as a standalone app.

