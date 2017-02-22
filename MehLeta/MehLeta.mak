# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

!IF "$(CFG)" == ""
CFG=MEHLETA - WIN32 DEBUG
!MESSAGE No configuration specified.  Defaulting to MEHLETA - WIN32 DEBUG.
!ENDIF 

!IF "$(CFG)" != "MehLeta - Win32 Release" && "$(CFG)" !=\
 "MehLeta - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "MehLeta.mak" CFG="MEHLETA - WIN32 DEBUG"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "MehLeta - Win32 Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "MehLeta - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
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
# PROP Target_Last_Scanned "MehLeta - Win32 Debug"
MTL=mktyplib.exe
F90=fl32.exe
RSC=rc.exe

!IF  "$(CFG)" == "MehLeta - Win32 Release"

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

ALL : "$(OUTDIR)\MehLeta.dll"

CLEAN : 
	-@erase ".\Release\MehLeta.dll"
	-@erase ".\Release\MehLeta-sub.obj"
	-@erase ".\Release\MehLeta.lib"
	-@erase ".\Release\MehLeta.exp"

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
BSC32_FLAGS=/nologo /o"$(OUTDIR)/MehLeta.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:windows /dll /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:windows /dll /incremental:no\
 /pdb:"$(OUTDIR)/MehLeta.pdb" /machine:I386 /out:"$(OUTDIR)/MehLeta.dll"\
 /implib:"$(OUTDIR)/MehLeta.lib" 
LINK32_OBJS= \
	"$(INTDIR)/MehLeta-sub.obj"

"$(OUTDIR)\MehLeta.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "MehLeta - Win32 Debug"

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

ALL : "$(OUTDIR)\MehLeta.dll" "$(OUTDIR)\MehLeta.bsc"

CLEAN : 
	-@erase ".\Debug\MehLeta.dll"
	-@erase ".\Debug\MehLeta-sub.obj"
	-@erase ".\Debug\MehLeta.ilk"
	-@erase ".\Debug\MehLeta.lib"
	-@erase ".\Debug\MehLeta.exp"
	-@erase ".\Debug\MehLeta.pdb"
	-@erase ".\Debug\MehLeta.bsc"
	-@erase ".\Debug\MehLeta-sub.sbr"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE F90 /Zi /I "Debug/" /c /nologo /MT
# ADD F90 /Op /G4 /FR /Zi /I "Debug/" /c /nologo /MT
F90_PROJ=/Op /G4 /FR"Debug/" /Zi /I "Debug/" /c /nologo /MT /Fo"Debug/"\
 /Fd"Debug/MehLeta.pdb" 
F90_OBJS=.\Debug/
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x41a /d "_DEBUG"
# ADD RSC /l 0x41a /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/MehLeta.bsc" 
BSC32_SBRS= \
	"$(INTDIR)/MehLeta-sub.sbr"

"$(OUTDIR)\MehLeta.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 kernel32.lib /nologo /subsystem:windows /dll /debug /machine:I386
# ADD LINK32 kernel32.lib /nologo /subsystem:windows /dll /debug /machine:I386
LINK32_FLAGS=kernel32.lib /nologo /subsystem:windows /dll /incremental:yes\
 /pdb:"$(OUTDIR)/MehLeta.pdb" /debug /machine:I386 /out:"$(OUTDIR)/MehLeta.dll"\
 /implib:"$(OUTDIR)/MehLeta.lib" 
LINK32_OBJS= \
	"$(INTDIR)/MehLeta-sub.obj"

"$(OUTDIR)\MehLeta.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
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

# Name "MehLeta - Win32 Release"
# Name "MehLeta - Win32 Debug"

!IF  "$(CFG)" == "MehLeta - Win32 Release"

!ELSEIF  "$(CFG)" == "MehLeta - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=".\MehLeta-sub.f90"

!IF  "$(CFG)" == "MehLeta - Win32 Release"


"$(INTDIR)\MehLeta-sub.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "MehLeta - Win32 Debug"


"$(INTDIR)\MehLeta-sub.obj" : $(SOURCE) "$(INTDIR)"

"$(INTDIR)\MehLeta-sub.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
