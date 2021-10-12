{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}

{$DEFINE D19}
{$DEFINE XE8Up}
{$DEFINE XE7Up}
{$DEFINE XE5Up}
{$DEFINE XE6Up}
{$DEFINE RXUp}

{$IF CompilerVersion = 30} // Delphi RX 10 Seattle
  {$DEFINE RX}
{$ENDIF}

{$IF CompilerVersion = 31} // Delphi RX 10.1 Berlin
  {$DEFINE RX10_1}
{$ENDIF}

{$IF CompilerVersion = 32} // Delphi RX 10.2 Tokyo
  {$DEFINE RX10_2}
{$ENDIF}

{$DEFINE RX10_3_Up}

{$IF CompilerVersion = 33} // Delphi RX 10.3 Rio
  {$DEFINE RX10_3}
  {$WARN UNKNOWN_CUSTOM_ATTRIBUTE ERROR}
{$ENDIF}

{$IF CompilerVersion = 34} // Delphi RX 10.4 Sidney
  {$DEFINE RX10_4}
  {$WARN UNKNOWN_CUSTOM_ATTRIBUTE ERROR}
{$ENDIF}

{$IF CompilerVersion > 33} // Delphi RX 10.3 Rio
  {$DEFINE RX10_4_Up}
{$ENDIF}

{$IF CompilerVersion = 35} // Delphi RX 11.0 Alexandria
  {$DEFINE RX11_0}
  {$WARN UNKNOWN_CUSTOM_ATTRIBUTE ERROR}
{$ENDIF}

{$IF CompilerVersion > 34} // Delphi RX 10.4 Sidney
  {$DEFINE RX11_0_Up}
{$ENDIF}

{$IF CompilerVersion > 30} // Delphi RX 10.1 Berlin
  {$DEFINE RX10_1Up}
  {$DEFINE RX1Up}
{$ENDIF}

{$DEFINE FIXED_COMPILERS}

{$DEFINE D13}
{$DEFINE D16Up}
{$DEFINE D17Up}
{$DEFINE XE4Up}

{$DEFINE INTERFACE_USE_STDCALL}

{$DEFINE STANDATD_BUFFER_ALLOCATION}

{$IFDEF MSWINDOWS}
  {$IF ( not defined(FMX)) OR ( not defined(RXUp))}
    {$DEFINE FMX_VCL}
  {$ENDIF}
{$ENDIF}

{$IFDEF MSWINDOWS}
  {$DEFINE USEMEDIATIMERS}
{$ELSE}
  {$DEFINE USE_NATIVE_IMPLEMENTATION}
{$ENDIF}

{$IF defined(ANDROID) or defined(IOS)}
  {$DEFINE NOMODAL}
{$ENDIF}


{$ZEROBASEDSTRINGS OFF}
{$WARN UNSUPPORTED_CONSTRUCT ERROR}

{$POINTERMATH ON}

