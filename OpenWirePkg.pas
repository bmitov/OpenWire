{ This file was automatically created by Lazarus. Do not edit!
This source is only used to compile and install the package.
 }

unit OpenWirePkg; 

interface

uses
  OWPins, OWStdTypes, OWExtCollection, LazarusPackageIntf; 

implementation

procedure Register; 
begin
end; 

initialization
  RegisterPackage('OpenWirePkg', @Register); 
end.
