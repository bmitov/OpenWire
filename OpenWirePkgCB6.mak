# ---------------------------------------------------------------------------
!if !$d(BCB)
BCB = $(MAKEDIR)\..
!endif

# ---------------------------------------------------------------------------
# IDE SECTION
# ---------------------------------------------------------------------------
# The following section of the project makefile is managed by the BCB IDE.
# It is recommended to use the IDE to change any of the values in this
# section.
# ---------------------------------------------------------------------------

VERSION = BCB.06.00
# ---------------------------------------------------------------------------
PROJECT = OpenWirePkgCB6.bpl
OBJFILES = OpenWirePkgCB6.obj OWStdTypes.obj OWPins.obj OWExtCollection.obj
RESFILES = OpenWirePkgCB6.res
MAINSOURCE = OpenWirePkgCB6.cpp
RESDEPEN = $(RESFILES)
LIBFILES = 
IDLFILES = 
IDLGENFILES = 
LIBRARIES = OpenWireLabPkgCB6.lib IIVelociaPkg6.lib IIMatadorPkg6.lib IIDataSet6.lib \
    IIDspSupportPkg6.lib IIDriverX6.lib IIPismoPkg6.lib IICalientePkg6.lib \
    IIStreamSupportPkg6.lib IISupport6.lib dss.lib VisionLabPkgCB6.lib \
    VideoLabPkgCB6.lib AudioLabPkgCB6.lib SignalLabScopePkgCB6.lib \
    SignalLabPkgCB6.lib VideoLabBasicPkgCB6.lib AudioLabBasicPkgCB6.lib \
    SignalLabBasicPkgCB6.lib roipackage6.lib ZPropPackBCB6.lib \
    bcb2kaxserver.lib indy.lib dbxcds.lib dclocx.lib soaprtl.lib bcbie.lib \
    nmfast.lib dbexpress.lib inetdbxpress.lib inetdbbde.lib bcbsmp.lib \
    dsnapcon.lib dsnapcrba.lib visualdbclx.lib teeqr.lib tee.lib teedb.lib \
    teeui.lib qrpt.lib bdecds.lib cds.lib ibxpress.lib vcldbx.lib bdertl.lib \
    adortl.lib vcldb.lib
PACKAGES = rtl.bpi vcl.bpi
SPARELIBS = rtl.lib vcldb.lib adortl.lib bdertl.lib vcldbx.lib ibxpress.lib cds.lib \
    bdecds.lib qrpt.lib teeui.lib teedb.lib tee.lib teeqr.lib visualdbclx.lib \
    dsnapcrba.lib dsnapcon.lib bcbsmp.lib inetdbbde.lib inetdbxpress.lib \
    dbexpress.lib nmfast.lib bcbie.lib soaprtl.lib dclocx.lib dbxcds.lib \
    indy.lib bcb2kaxserver.lib ZPropPackBCB6.lib roipackage6.lib \
    SignalLabBasicPkgCB6.lib AudioLabBasicPkgCB6.lib VideoLabBasicPkgCB6.lib \
    SignalLabPkgCB6.lib SignalLabScopePkgCB6.lib AudioLabPkgCB6.lib \
    VideoLabPkgCB6.lib VisionLabPkgCB6.lib dss.lib IISupport6.lib \
    IIStreamSupportPkg6.lib IICalientePkg6.lib IIPismoPkg6.lib IIDriverX6.lib \
    IIDspSupportPkg6.lib IIDataSet6.lib IIMatadorPkg6.lib IIVelociaPkg6.lib \
    OpenWireLabPkgCB6.lib
DEFFILE = 
OTHERFILES = 
# ---------------------------------------------------------------------------
DEBUGLIBPATH = $(BCB)\lib\debug
RELEASELIBPATH = $(BCB)\lib\release
USERDEFINES = USEPACKAGES;OWCBUILDER
SYSDEFINES = NO_STRICT;_VIS_NOLIB;USEPACKAGES
INCLUDEPATH = $(BCB)\include;$(BCB)\include\vcl
LIBPATH = $(BCB)\Projects\Bpl;$(BCB)\Projects\Lib;$(BCB)\lib\obj;$(BCB)\lib;$(BCB)\Source\ToolsApi
WARNINGS= -w-par -w-8027 -w-8026
PATHCPP = .;
PATHASM = .;
PATHPAS = .;
PATHRC = .;
PATHOBJ = .;$(LIBPATH)
# ---------------------------------------------------------------------------
CFLAG1 = -Od -H=$(BCB)\lib\vcl60.csm -Hc -Vx -Ve -Tkh30000 -ff -X- -a8 -5 -b- -k- \
    -y -v -vi -c -tWM
IDLCFLAGS = -I$(BCB)\include -I$(BCB)\include\vcl -src_suffix cpp -DUSEPACKAGES \
    -DOWCBUILDER -boa
PFLAGS = -$Y+ -$W -$R -$Q -$O- -$A8 -v -M -JPHNE
RFLAGS = 
AFLAGS = /mx /w2 /zn
LFLAGS = -D"OpenWire Project" -aa -Tpp -Gpr -x -Gn -Gl -Gi -v
# ---------------------------------------------------------------------------
ALLOBJ = c0pkg32.obj $(PACKAGES) sysinit.obj $(OBJFILES)
ALLRES = $(RESFILES)
ALLLIB = $(LIBFILES) $(LIBRARIES) import32.lib cp32mt.lib
# ---------------------------------------------------------------------------
!ifdef IDEOPTIONS

[Version Info]
IncludeVerInfo=0
AutoIncBuild=0
MajorVer=1
MinorVer=0
Release=0
Build=0
Debug=0
PreRelease=0
Special=0
Private=0
DLL=0

[Version Info Keys]
CompanyName=
FileDescription=
FileVersion=1.0.0.0
InternalName=
LegalCopyright=
LegalTrademarks=
OriginalFilename=
ProductName=
ProductVersion=1.0.0.0
Comments=

[Debugging]
DebugSourceDirs=$(BCB)\source\vcl

!endif





# ---------------------------------------------------------------------------
# MAKE SECTION
# ---------------------------------------------------------------------------
# This section of the project file is not used by the BCB IDE.  It is for
# the benefit of building from the command-line using the MAKE utility.
# ---------------------------------------------------------------------------

.autodepend
# ---------------------------------------------------------------------------
!if "$(USERDEFINES)" != ""
AUSERDEFINES = -d$(USERDEFINES:;= -d)
!else
AUSERDEFINES =
!endif

!if !$d(BCC32)
BCC32 = bcc32
!endif

!if !$d(CPP32)
CPP32 = cpp32
!endif

!if !$d(DCC32)
DCC32 = dcc32
!endif

!if !$d(TASM32)
TASM32 = tasm32
!endif

!if !$d(LINKER)
LINKER = ilink32
!endif

!if !$d(BRCC32)
BRCC32 = brcc32
!endif


# ---------------------------------------------------------------------------
!if $d(PATHCPP)
.PATH.CPP = $(PATHCPP)
.PATH.C   = $(PATHCPP)
!endif

!if $d(PATHPAS)
.PATH.PAS = $(PATHPAS)
!endif

!if $d(PATHASM)
.PATH.ASM = $(PATHASM)
!endif

!if $d(PATHRC)
.PATH.RC  = $(PATHRC)
!endif

!if $d(PATHOBJ)
.PATH.OBJ  = $(PATHOBJ)
!endif
# ---------------------------------------------------------------------------
$(PROJECT): $(OTHERFILES) $(IDLGENFILES) $(OBJFILES) $(RESDEPEN) $(DEFFILE)
    $(BCB)\BIN\$(LINKER) @&&!
    $(LFLAGS) -L$(LIBPATH) +
    $(ALLOBJ), +
    $(PROJECT),, +
    $(ALLLIB), +
    $(DEFFILE), +
    $(ALLRES)
!
# ---------------------------------------------------------------------------
.pas.hpp:
    $(BCB)\BIN\$(DCC32) $(PFLAGS) -U$(INCLUDEPATH) -D$(USERDEFINES);$(SYSDEFINES) -O$(INCLUDEPATH) --BCB {$< }

.pas.obj:
    $(BCB)\BIN\$(DCC32) $(PFLAGS) -U$(INCLUDEPATH) -D$(USERDEFINES);$(SYSDEFINES) -O$(INCLUDEPATH) --BCB {$< }

.cpp.obj:
    $(BCB)\BIN\$(BCC32) $(CFLAG1) $(WARNINGS) -I$(INCLUDEPATH) -D$(USERDEFINES);$(SYSDEFINES) -n$(@D) {$< }

.c.obj:
    $(BCB)\BIN\$(BCC32) $(CFLAG1) $(WARNINGS) -I$(INCLUDEPATH) -D$(USERDEFINES);$(SYSDEFINES) -n$(@D) {$< }

.c.i:
    $(BCB)\BIN\$(CPP32) $(CFLAG1) $(WARNINGS) -I$(INCLUDEPATH) -D$(USERDEFINES);$(SYSDEFINES) -n. {$< }

.cpp.i:
    $(BCB)\BIN\$(CPP32) $(CFLAG1) $(WARNINGS) -I$(INCLUDEPATH) -D$(USERDEFINES);$(SYSDEFINES) -n. {$< }

.asm.obj:
    $(BCB)\BIN\$(TASM32) $(AFLAGS) -i$(INCLUDEPATH:;= -i) $(AUSERDEFINES) -d$(SYSDEFINES:;= -d) $<, $@

.rc.res:
    $(BCB)\BIN\$(BRCC32) $(RFLAGS) -I$(INCLUDEPATH) -D$(USERDEFINES);$(SYSDEFINES) -fo$@ $<



# ---------------------------------------------------------------------------




