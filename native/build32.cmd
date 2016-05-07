echo "Building for x86..."
cl.exe /c /I"%JAVA_HOME%\include" /I"%JAVA_HOME%\include\win32" /Zi /W3 /WX- /O2 /Oi /Oy- /GL /D NDEBUG /D _WINDOWS /D _USRDLL /D JOML_EXPORTS /D _WINDLL /D _UNICODE /D UNICODE /Gm- /EHsc /MT /GS /Gy /fp:precise /Zc:wchar_t /Zc:forScope /Zc:inline /Fo"build\\" /Fd"build\\vc140.pdb" /Gd /TC /errorReport:prompt src\JNI.c src\org_joml_JNI.c src\org_joml_Matrix3f.c src\org_joml_Matrix4f.c
cl.exe /c /I"%JAVA_HOME%\include" /I"%JAVA_HOME%\include\win32" /Zi /W3 /WX- /O2 /Oi /Oy- /GL /D NDEBUG /D _WINDOWS /D _USRDLL /D JOML_EXPORTS /D _WINDLL /D _UNICODE /D UNICODE /Gm- /EHsc /MT /GS /Gy /arch:AVX /fp:precise /Zc:wchar_t /Zc:forScope /Zc:inline /Fo"build\\" /Fd"build\\vc140.pdb" /Gd /TC /errorReport:prompt src\org_joml_Matrix4d.c  src\org_joml_Matrix4f_avx.c
link.exe /ERRORREPORT:PROMPT /OUT:"build\joml32.dll" /INCREMENTAL:NO kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /MANIFEST:NO /SUBSYSTEM:WINDOWS /OPT:REF /OPT:ICF /TLBID:1 /DYNAMICBASE /NXCOMPAT /IMPLIB:"build\joml32.lib" /MACHINE:X86 /SAFESEH /DLL build\JNI.obj build\org_joml_JNI.obj build\org_joml_Matrix3f.obj build\org_joml_Matrix4f.obj build\org_joml_Matrix4f_avx.obj build\org_joml_Matrix4d.obj
del build\*.obj build\*.pdb build\*.exp build\*.lib
