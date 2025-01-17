unit AWS.SES.Model.DescribeConfigurationSetRequest;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.SES.Model.Request;

type
  TDescribeConfigurationSetRequest = class;
  
  IDescribeConfigurationSetRequest = interface
    function GetConfigurationSetAttributeNames: TList<string>;
    procedure SetConfigurationSetAttributeNames(const Value: TList<string>);
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
    function Obj: TDescribeConfigurationSetRequest;
    function IsSetConfigurationSetAttributeNames: Boolean;
    function IsSetConfigurationSetName: Boolean;
    property ConfigurationSetAttributeNames: TList<string> read GetConfigurationSetAttributeNames write SetConfigurationSetAttributeNames;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
  end;
  
  TDescribeConfigurationSetRequest = class(TAmazonSimpleEmailServiceRequest, IDescribeConfigurationSetRequest)
  strict private
    FConfigurationSetAttributeNames: TList<string>;
    FConfigurationSetName: Nullable<string>;
    function GetConfigurationSetAttributeNames: TList<string>;
    procedure SetConfigurationSetAttributeNames(const Value: TList<string>);
    function GetConfigurationSetName: string;
    procedure SetConfigurationSetName(const Value: string);
  strict protected
    function Obj: TDescribeConfigurationSetRequest;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetConfigurationSetAttributeNames: Boolean;
    function IsSetConfigurationSetName: Boolean;
    property ConfigurationSetAttributeNames: TList<string> read GetConfigurationSetAttributeNames write SetConfigurationSetAttributeNames;
    property ConfigurationSetName: string read GetConfigurationSetName write SetConfigurationSetName;
  end;
  
implementation

{ TDescribeConfigurationSetRequest }

constructor TDescribeConfigurationSetRequest.Create;
begin
  inherited;
  FConfigurationSetAttributeNames := TList<string>.Create;
end;

destructor TDescribeConfigurationSetRequest.Destroy;
begin
  FConfigurationSetAttributeNames.Free;
  inherited;
end;

function TDescribeConfigurationSetRequest.Obj: TDescribeConfigurationSetRequest;
begin
  Result := Self;
end;

function TDescribeConfigurationSetRequest.GetConfigurationSetAttributeNames: TList<string>;
begin
  Result := FConfigurationSetAttributeNames;
end;

procedure TDescribeConfigurationSetRequest.SetConfigurationSetAttributeNames(const Value: TList<string>);
begin
  if FConfigurationSetAttributeNames <> Value then
  begin
    FConfigurationSetAttributeNames.Free;
    FConfigurationSetAttributeNames := Value;
  end;
end;

function TDescribeConfigurationSetRequest.IsSetConfigurationSetAttributeNames: Boolean;
begin
  Result := (FConfigurationSetAttributeNames <> nil) and (FConfigurationSetAttributeNames.Count > 0);
end;

function TDescribeConfigurationSetRequest.GetConfigurationSetName: string;
begin
  Result := FConfigurationSetName.ValueOrDefault;
end;

procedure TDescribeConfigurationSetRequest.SetConfigurationSetName(const Value: string);
begin
  FConfigurationSetName := Value;
end;

function TDescribeConfigurationSetRequest.IsSetConfigurationSetName: Boolean;
begin
  Result := FConfigurationSetName.HasValue;
end;

end.
