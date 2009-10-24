//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
USEFORMNS("OpenWirePinEditors.pas", Openwirepineditors, SourcePinForm);
USEFORMNS("OWStateEditors.pas", Owstateeditors, OWStatePinForm);
USEFORMNS("OWAboutFormUnit.pas", Owaboutformunit, OWAboutForm);
USEFORMNS("OWAfterPinSelectFormUnit.pas", Owafterpinselectformunit, OWAfterPinSelectForm);
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
