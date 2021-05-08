mkdir build
mkdir lib
rem amend the BOOST variables to your environment, the MSVC_RUNTIME=static is needed to avoid inclusion of 3 MSVC DLLs in deployment: msvcp<version>.dll, vcruntime<version>.dll and vcruntime<version>_1.dll
rem -DMSVC_RUNTIME=static
cmake -G "Visual Studio 16 2019" -A x64 -DBOOST_LIBRARYDIR=C:\dev\boost\lib -DBOOST_ROOT=C:\dev\boost -DBOOST_INCLUDE_DIR=C:\dev\boost -DMSVC_RUNTIME=dynamic -B build
cmake --build build -v --config Release
copy build\ql\Release\*.lib lib
pause
