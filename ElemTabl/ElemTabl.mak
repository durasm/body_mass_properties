# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

!IF "$(CFG)" == ""
CFG=ElemTabl - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to ElemTabl - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "ElemTabl - Win32 Release" && "$(CFG)" !=\
 "ElemTabl - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "ElemTabl.mak" CFG="ElemTabl - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ElemTabl - Win32 Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "ElemTabl - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "ElemTabl - Win32 Debug"
MTL=mktyplib.exe
F90=fl32.exe
RSC=rc.exe

!IF  "$(CFG)" == "ElemTabl - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
OUTDIR=.\Release
INTDIR=.\Release

ALL : "$(OUTDIR)\ElemTabl.dll"

CLEAN : 
	-@erase ".\Release\ElemTabl.dll"
	-@erase ".\Release\kug.obj"
	-@erase ".\Release\kon.obj"
	-@erase ".\Release\pro.obj"
	-@erase ".\Release\kom.obj"
	-@erase ".\Release\par.obj"
	-@erase ".\Release\Prim.obj"
	-@erase ".\Release\eli.obj"
	-@erase ".\Release\ozi.obj"
	-@erase ".\Release\ElemTabl.obj"
	-@erase ".\Release\kru.obj"
	-@erase ".\Release\cil.obj"
	-@erase ".\Release\tabl.obj"
	-@erase ".\Release\tor.obj"
	-@erase ".\Release\ElemTabl.lib"
	-@erase ".\Release\ElemTabl.exp"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE F90 /Ox /I "Release/" /c /nologo /MT
# ADD F90 /Ox /Op /G4 /I "Release/" /c /nologo /MT
# SUBTRACT F90 /FR
F90_PROJ=/Ox /Op /G4 /I "Release/" /c /nologo /MT /Fo"Release/" 
F90_OBJS=.\Release/
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x41a /d "NDEBUG"
# ADD RSC /l 0x41a /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/ElemTabl.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:windows /dll /machine:I386
# SUBTRACT LINK32 /profile /map /nodefaultlib
LINK32_FLAGS=kernel32.lib /nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)/ElemTabl.pdb" /machine:I386 /out:"$(OUTDIR)/ElemTabl.dll"\
 /implib:"$(OUTDIR)/ElemTabl.lib" 
LINK32_OBJS= \
	"$(INTDIR)/kug.obj" \
	"$(INTDIR)/kon.obj" \
	"$(INTDIR)/pro.obj" \
	"$(INTDIR)/kom.obj" \
	"$(INTDIR)/par.obj" \
	"$(INTDIR)/Prim.obj" \
	"$(INTDIR)/eli.obj" \
	"$(INTDIR)/ozi.obj" \
	"$(INTDIR)/ElemTabl.obj" \
	"$(INTDIR)/kru.obj" \
	"$(INTDIR)/cil.obj" \
	"$(INTDIR)/tabl.obj" \
	"$(INTDIR)/tor.obj" \
	"..\MehLeta\Debug\MehLeta.lib"

"$(OUTDIR)\ElemTabl.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "ElemTabl - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "$(OUTDIR)\ElemTabl.dll" "$(OUTDIR)\ElemTabl.bsc"

CLEAN : 
	-@erase ".\Debug\ElemTabl.dll"
	-@erase ".\Debug\par.obj"
	-@erase ".\Debug\tor.obj"
	-@erase ".\Debug\eli.obj"
	-@erase ".\Debug\ozi.obj"
	-@erase ".\Debug\tabl.obj"
	-@erase ".\Debug\ElemTabl.obj"
	-@erase ".\Debug\kru.obj"
	-@erase ".\Debug\cil.obj"
	-@erase ".\Debug\Prim.obj"
	-@erase ".\Debug\kug.obj"
	-@erase ".\Debug\kon.obj"
	-@erase ".\Debug\pro.obj"
	-@erase ".\Debug\kom.obj"
	-@erase ".\Debug\ElemTabl.ilk"
	-@erase ".\Debug\ElemTabl.lib"
	-@erase ".\Debug\ElemTabl.exp"
	-@erase ".\Debug\ElemTabl.pdb"
	-@erase ".\Debug\ElemTabl.bsc"
	-@erase ".\Debug\ElemTabl.sbr"
	-@erase ".\Debug\tabl.sbr"
	-@erase ".\Debug\ozi.sbr"
	-@erase ".\Debug\eli.sbr"
	-@erase ".\Debug\kom.sbr"
	-@erase ".\Debug\kon.sbr"
	-@erase ".\Debug\kru.sbr"
	-@erase ".\Debug\kug.sbr"
	-@erase ".\Debug\cil.sbr"
	-@erase ".\Debug\par.sbr"
	-@erase ".\Debug\pro.sbr"
	-@erase ".\Debug\tor.sbr"
	-@erase ".\Debug\Prim.sbr"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE F90 /Zi /I "Debug/" /c /nologo /MT
# ADD F90 /Op /G4 /FR /Zi /I "Debug/" /c /nologo /MT
# SUBTRACT F90 /Ox
F90_PROJ=/Op /G4 /FR"Debug/" /Zi /I "Debug/" /c /nologo /MT /Fo"Debug/"\
 /Fd"Debug/ElemTabl.pdb" 
F90_OBJS=.\Debug/
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x41a /d "_DEBUG"
# ADD RSC /l 0x41a /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/ElemTabl.bsc" 
BSC32_SBRS= \
	"$(INTDIR)/ElemTabl.sbr" \
	"$(INTDIR)/tabl.sbr" \
	"$(INTDIR)/ozi.sbr" \
	"$(INTDIR)/eli.sbr" \
	"$(INTDIR)/kom.sbr" \
	"$(INTDIR)/kon.sbr" \
	"$(INTDIR)/kru.sbr" \
	"$(INTDIR)/kug.sbr" \
	"$(INTDIR)/cil.sbr" \
	"$(INTDIR)/par.sbr" \
	"$(INTDIR)/pro.sbr" \
	"$(INTDIR)/tor.sbr" \
	"$(INTDIR)/Prim.sbr"

"$(OUTDIR)\ElemTabl.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:windows /dll /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:windows /dll /debug /machine:I386
# SUBTRACT LINK32 /profile /map /nodefaultlib
LINK32_FLAGS=kernel32.lib /nologo /subsystem:windows /dll /incremental:yes\
 /pdb:"$(OUTDIR)/ElemTabl.pdb" /debug /machine:I386\
 /out:"$(OUTDIR)/ElemTabl.dll" /implib:"$(OUTDIR)/ElemTabl.lib" 
LINK32_OBJS= \
	"$(INTDIR)/par.obj" \
	"$(INTDIR)/tor.obj" \
	"$(INTDIR)/eli.obj" \
	"$(INTDIR)/ozi.obj" \
	"$(INTDIR)/tabl.obj" \
	"$(INTDIR)/ElemTabl.obj" \
	"$(INTDIR)/kru.obj" \
	"$(INTDIR)/cil.obj" \
	"$(INTDIR)/Prim.obj" \
	"$(INTDIR)/kug.obj" \
	"$(INTDIR)/kon.obj" \
	"$(INTDIR)/pro.obj" \
	"$(INTDIR)/kom.obj" \
	"..\MehLeta\Debug\MehLeta.lib"

"$(OUTDIR)\ElemTabl.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.for{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

.f90{$(F90_OBJS)}.obj:
   $(F90) $(F90_PROJ) $<  

################################################################################
# Begin Target

# Name "ElemTabl - Win32 Release"
# Name "ElemTabl - Win32 Debug"

!IF  "$(CFG)" == "ElemTabl - Win32 Release"

!ELSEIF  "$(CFG)" == "ElemTabl - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\ElemTabl.f90

!IF  "$(CFG)" == "ElemTabl - Win32 Release"


"$(INTDIR)\ElemTabl.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ElemTabl - Win32 Debug"


"$(INTDIR)\ElemTabl.obj" : $(SOURCE) "$(INTDIR)"

"$(INTDIR)\ElemTabl.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\tabl.f90

!IF  "$(CFG)" == "ElemTabl - Win32 Release"


"$(INTDIR)\tabl.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ElemTabl - Win32 Debug"


"$(INTDIR)\tabl.obj" : $(SOURCE) "$(INTDIR)"

"$(INTDIR)\tabl.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ozi.f90

!IF  "$(CFG)" == "ElemTabl - Win32 Release"


"$(INTDIR)\ozi.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ElemTabl - Win32 Debug"


"$(INTDIR)\ozi.obj" : $(SOURCE) "$(INTDIR)"

"$(INTDIR)\ozi.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\eli.f90

!IF  "$(CFG)" == "ElemTabl - Win32 Release"


"$(INTDIR)\eli.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ElemTabl - Win32 Debug"


"$(INTDIR)\eli.obj" : $(SOURCE) "$(INTDIR)"

"$(INTDIR)\eli.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\kom.f90

!IF  "$(CFG)" == "ElemTabl - Win32 Release"


"$(INTDIR)\kom.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ElemTabl - Win32 Debug"


"$(INTDIR)\kom.obj" : $(SOURCE) "$(INTDIR)"

"$(INTDIR)\kom.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\kon.f90

!IF  "$(CFG)" == "ElemTabl - Win32 Release"


"$(INTDIR)\kon.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ElemTabl - Win32 Debug"


"$(INTDIR)\kon.obj" : $(SOURCE) "$(INTDIR)"

"$(INTDIR)\kon.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\kru.f90

!IF  "$(CFG)" == "ElemTabl - Win32 Release"


"$(INTDIR)\kru.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ElemTabl - Win32 Debug"


"$(INTDIR)\kru.obj" : $(SOURCE) "$(INTDIR)"

"$(INTDIR)\kru.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\kug.f90

!IF  "$(CFG)" == "ElemTabl - Win32 Release"


"$(INTDIR)\kug.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ElemTabl - Win32 Debug"


"$(INTDIR)\kug.obj" : $(SOURCE) "$(INTDIR)"

"$(INTDIR)\kug.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\cil.f90

!IF  "$(CFG)" == "ElemTabl - Win32 Release"


"$(INTDIR)\cil.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ElemTabl - Win32 Debug"


"$(INTDIR)\cil.obj" : $(SOURCE) "$(INTDIR)"

"$(INTDIR)\cil.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\par.f90

!IF  "$(CFG)" == "ElemTabl - Win32 Release"


"$(INTDIR)\par.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ElemTabl - Win32 Debug"


"$(INTDIR)\par.obj" : $(SOURCE) "$(INTDIR)"

"$(INTDIR)\par.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\pro.f90

!IF  "$(CFG)" == "ElemTabl - Win32 Release"


"$(INTDIR)\pro.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ElemTabl - Win32 Debug"


"$(INTDIR)\pro.obj" : $(SOURCE) "$(INTDIR)"

"$(INTDIR)\pro.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\tor.f90

!IF  "$(CFG)" == "ElemTabl - Win32 Release"


"$(INTDIR)\tor.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ElemTabl - Win32 Debug"


"$(INTDIR)\tor.obj" : $(SOURCE) "$(INTDIR)"

"$(INTDIR)\tor.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Prim.f90

!IF  "$(CFG)" == "ElemTabl - Win32 Release"


"$(INTDIR)\Prim.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "ElemTabl - Win32 Debug"


"$(INTDIR)\Prim.obj" : $(SOURCE) "$(INTDIR)"

"$(INTDIR)\Prim.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE="\Users\Mario\Nastava\Mehanika Leta\Seminar\MehLeta\Debug\MehLeta.lib"

!IF  "$(CFG)" == "ElemTabl - Win32 Release"

!ELSEIF  "$(CFG)" == "ElemTabl - Win32 Debug"

!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
