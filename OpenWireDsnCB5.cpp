//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
USERES("OpenWireDsnCB5.res");
USEPACKAGE("vcl50.bpi");
USEPACKAGE("OpenWirePkgCB5.bpi");
USEFORMNS("OpenWirePinEditors.pas", Openwirepineditors, SourcePinForm);
USEFORMNS("OWStateEditors.pas", Owstateeditors, OWStatePinForm);
USEFORMNS("OWAboutFormUnit.pas", Owaboutformunit, OWAboutForm);
USEFORMNS("OWAfterPinSelectFormUnit.pas", Owafterpinselectformunit, OWAfterPinSelectForm);
USEUNIT("OWDesignSelectionsList.pas");
USEUNIT("OWClassProperty.pas");
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
