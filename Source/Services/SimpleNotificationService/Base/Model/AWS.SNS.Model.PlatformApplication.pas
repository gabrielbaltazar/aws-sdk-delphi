unit AWS.SNS.Model.PlatformApplication;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable;

type
  TPlatformApplication = class;
  
  IPlatformApplication = interface
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetPlatformApplicationArn: string;
    procedure SetPlatformApplicationArn(const Value: string);
    function Obj: TPlatformApplication;
    function IsSetAttributes: Boolean;
    function IsSetPlatformApplicationArn: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property PlatformApplicationArn: string read GetPlatformApplicationArn write SetPlatformApplicationArn;
  end;
  
  TPlatformApplication = class
  strict private
    FAttributes: TDictionary<string, string>;
    FPlatformApplicationArn: Nullable<string>;
    function GetAttributes: TDictionary<string, string>;
    procedure SetAttributes(const Value: TDictionary<string, string>);
    function GetPlatformApplicationArn: string;
    procedure SetPlatformApplicationArn(const Value: string);
  strict protected
    function Obj: TPlatformApplication;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetAttributes: Boolean;
    function IsSetPlatformApplicationArn: Boolean;
    property Attributes: TDictionary<string, string> read GetAttributes write SetAttributes;
    property PlatformApplicationArn: string read GetPlatformApplicationArn write SetPlatformApplicationArn;
  end;
  
implementation

{ TPlatformApplication }

constructor TPlatformApplication.Create;
begin
  inherited;
  FAttributes := TDictionary<string, string>.Create;
end;

destructor TPlatformApplication.Destroy;
begin
  FAttributes.Free;
  inherited;
end;

function TPlatformApplication.Obj: TPlatformApplication;
begin
  Result := Self;
end;

function TPlatformApplication.GetAttributes: TDictionary<string, string>;
begin
  Result := FAttributes;
end;

procedure TPlatformApplication.SetAttributes(const Value: TDictionary<string, string>);
begin
  if FAttributes <> Value then
  begin
    FAttributes.Free;
    FAttributes := Value;
  end;
end;

function TPlatformApplication.IsSetAttributes: Boolean;
begin
  Result := (FAttributes <> nil) and (FAttributes.Count > 0);
end;

function TPlatformApplication.GetPlatformApplicationArn: string;
begin
  Result := FPlatformApplicationArn.ValueOrDefault;
end;

procedure TPlatformApplication.SetPlatformApplicationArn(const Value: string);
begin
  FPlatformApplicationArn := Value;
end;

function TPlatformApplication.IsSetPlatformApplicationArn: Boolean;
begin
  Result := FPlatformApplicationArn.HasValue;
end;

end.
