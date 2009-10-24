//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
USERES("OpenWireLabPkgCB5.res");
USEPACKAGE("vcl50.bpi");
USEUNIT("OWLComps.pas");
USERES("OWLComps.dcr");
USEPACKAGE("OpenWirePkgCB5.bpi");
USEUNIT("OWLStateComps.pas");
//---------------------------------------------------------------------------
#pragma package(smart_init)
//---------------------------------------------------------------------------

//   Package source.
//---------------------------------------------------------------------------

#pragma argsused
int WINAPI DllEntryPoint(HINSTANCE hinst, unsigned long reason, void*)
{
    return 1;
}
//---------------------------------------------------------------------------
