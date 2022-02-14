# Toolchain Installation on Windows

# MinGW (GCC) for Windows

## Install MinGW Sys
Get the Installaer from https://github.com/msys2/msys2-installer/releases/download/2022-01-28/msys2-x86_64-20220128.exe and run it.
In my examples I use C:\apps\msys64
To ensure the package is up-to-date start the "MSYS2 MSYS" environment and update the package database:

'''bash
pacman -Syu
'''
Close "MSYS2 MSYS" if not done automatically.

Got to the Windows Start Menu and open "MSYS2 SYS".
Execute 
'''bash
pacman -Su
'''
This will update the remaining items of the base package of MSYS2 MSYS.

You are now ready to install the compilers you need.

## Install x64 GCC in MinGW

'''bash
pacman -S --needed base-devel mingw-w64-x86_64-toolchain
'''

## Install ARM GCC in MinGW

'''bash
pacman -S mingw-w64-x86_64-arm-none-eabi-gcc
'''

## Install C++ PlugIn to MS Visual Studio Code

## Configure MS Visual Studio Code

# References
Instalaltion of MSYS and MinGW                      https://www.msys2.org/
Installation of ARM Toolchain                       https://packages.msys2.org/package/mingw-w64-x86_64-arm-none-eabi-gcc-ada
Installation of C++ PlugIn to MS Visual Studio Code https://code.visualstudio.com/docs/languages/cpp

