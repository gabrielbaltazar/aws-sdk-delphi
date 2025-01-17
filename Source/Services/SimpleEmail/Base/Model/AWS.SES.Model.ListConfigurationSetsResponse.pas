unit AWS.SES.Model.ListConfigurationSetsResponse;

interface

uses
  System.Generics.Collections, 
  Bcl.Types.Nullable, 
  AWS.Runtime.Model, 
  AWS.SES.Model.ConfigurationSet;

type
  TListConfigurationSetsResponse = class;
  
  IListConfigurationSetsResponse = interface(IAmazonWebServiceResponse)
    function GetConfigurationSets: TObjectList<TConfigurationSet>;
    procedure SetConfigurationSets(const Value: TObjectList<TConfigurationSet>);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
    function Obj: TListConfigurationSetsResponse;
    function IsSetConfigurationSets: Boolean;
    function IsSetNextToken: Boolean;
    property ConfigurationSets: TObjectList<TConfigurationSet> read GetConfigurationSets write SetConfigurationSets;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
  TListConfigurationSetsResponse = class(TAmazonWebServiceResponse, IListConfigurationSetsResponse)
  strict private
    FConfigurationSets: TObjectList<TConfigurationSet>;
    FNextToken: Nullable<string>;
    function GetConfigurationSets: TObjectList<TConfigurationSet>;
    procedure SetConfigurationSets(const Value: TObjectList<TConfigurationSet>);
    function GetNextToken: string;
    procedure SetNextToken(const Value: string);
  strict protected
    function Obj: TListConfigurationSetsResponse;
  public
    constructor Create;
    destructor Destroy; override;
    function IsSetConfigurationSets: Boolean;
    function IsSetNextToken: Boolean;
    property ConfigurationSets: TObjectList<TConfigurationSet> read GetConfigurationSets write SetConfigurationSets;
    property NextToken: string read GetNextToken write SetNextToken;
  end;
  
implementation

{ TListConfigurationSetsResponse }

constructor TListConfigurationSetsResponse.Create;
begin
  inherited;
  FConfigurationSets := TObjectList<TConfigurationSet>.Create;
end;

destructor TListConfigurationSetsResponse.Destroy;
begin
  FConfigurationSets.Free;
  inherited;
end;

function TListConfigurationSetsResponse.Obj: TListConfigurationSetsResponse;
begin
  Result := Self;
end;

function TListConfigurationSetsResponse.GetConfigurationSets: TObjectList<TConfigurationSet>;
begin
  Result := FConfigurationSets;
end;

procedure TListConfigurationSetsResponse.SetConfigurationSets(const Value: TObjectList<TConfigurationSet>);
begin
  if FConfigurationSets <> Value then
  begin
    FConfigurationSets.Free;
    FConfigurationSets := Value;
  end;
end;

function TListConfigurationSetsResponse.IsSetConfigurationSets: Boolean;
begin
  Result := (FConfigurationSets <> nil) and (FConfigurationSets.Count > 0);
end;

function TListConfigurationSetsResponse.GetNextToken: string;
begin
  Result := FNextToken.ValueOrDefault;
end;

procedure TListConfigurationSetsResponse.SetNextToken(const Value: string);
begin
  FNextToken := Value;
end;

function TListConfigurationSetsResponse.IsSetNextToken: Boolean;
begin
  Result := FNextToken.HasValue;
end;

end.
