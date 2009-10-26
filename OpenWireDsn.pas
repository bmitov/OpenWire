{ This file was automatically created by Lazarus. do not edit!
  This source is only used to compile and install the package.
 }

unit OpenWireDsn; 

interface

uses
    OpenWirePinEditors, OWStateEditors, OWAboutFormUnit, 
  OWAfterPinSelectFormUnit, OWClassProperty, LazarusPackageIntf;

implementation

procedure Register; 
begin
  RegisterUnit('OpenWirePinEditors', @OpenWirePinEditors.Register); 
end; 

initialization
  RegisterPackage('OpenWireDsn', @Register); 
end.
