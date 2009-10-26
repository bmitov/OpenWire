{ This file was automatically created by Lazarus. do not edit!
  This source is only used to compile and install the package.
 }

unit OpenWireLabPkg; 

interface

uses
  OWLComps, OWLStateComps, OpenWireLabPkgLazRes, LazarusPackageIntf;

implementation

procedure Register; 
begin
  RegisterUnit('OWLComps', @OWLComps.Register); 
  RegisterUnit('OWLStateComps', @OWLStateComps.Register); 
end; 

initialization
  RegisterPackage('OpenWireLabPkg', @Register); 
end.
