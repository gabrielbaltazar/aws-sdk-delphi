unit AWS.SES.Model.BouncedRecipientInfo;

interface

uses
  Bcl.Types.Nullable, 
  AWS.SES.Enums, 
  AWS.SES.Model.RecipientDsnFields;

type
  TBouncedRecipientInfo = class;
  
  IBouncedRecipientInfo = interface
    function GetBounceType: TBounceType;
    procedure SetBounceType(const Value: TBounceType);
    function GetRecipient: string;
    procedure SetRecipient(const Value: string);
    function GetRecipientArn: string;
    procedure SetRecipientArn(const Value: string);
    function GetRecipientDsnFields: TRecipientDsnFields;
    procedure SetRecipientDsnFields(const Value: TRecipientDsnFields);
    function Obj: TBouncedRecipientInfo;
    function IsSetBounceType: Boolean;
    function IsSetRecipient: Boolean;
    function IsSetRecipientArn: Boolean;
    function IsSetRecipientDsnFields: Boolean;
    property BounceType: TBounceType read GetBounceType write SetBounceType;
    property Recipient: string read GetRecipient write SetRecipient;
    property RecipientArn: string read GetRecipientArn write SetRecipientArn;
    property RecipientDsnFields: TRecipientDsnFields read GetRecipientDsnFields write SetRecipientDsnFields;
  end;
  
  TBouncedRecipientInfo = class
  strict private
    FBounceType: Nullable<TBounceType>;
    FRecipient: Nullable<string>;
    FRecipientArn: Nullable<string>;
    FRecipientDsnFields: TRecipientDsnFields;
    function GetBounceType: TBounceType;
    procedure SetBounceType(const Value: TBounceType);
    function GetRecipient: string;
    procedure SetRecipient(const Value: string);
    function GetRecipientArn: string;
    procedure SetRecipientArn(const Value: string);
    function GetRecipientDsnFields: TRecipientDsnFields;
    procedure SetRecipientDsnFields(const Value: TRecipientDsnFields);
  strict protected
    function Obj: TBouncedRecipientInfo;
  public
    destructor Destroy; override;
    function IsSetBounceType: Boolean;
    function IsSetRecipient: Boolean;
    function IsSetRecipientArn: Boolean;
    function IsSetRecipientDsnFields: Boolean;
    property BounceType: TBounceType read GetBounceType write SetBounceType;
    property Recipient: string read GetRecipient write SetRecipient;
    property RecipientArn: string read GetRecipientArn write SetRecipientArn;
    property RecipientDsnFields: TRecipientDsnFields read GetRecipientDsnFields write SetRecipientDsnFields;
  end;
  
implementation

{ TBouncedRecipientInfo }

destructor TBouncedRecipientInfo.Destroy;
begin
  FRecipientDsnFields.Free;
  inherited;
end;

function TBouncedRecipientInfo.Obj: TBouncedRecipientInfo;
begin
  Result := Self;
end;

function TBouncedRecipientInfo.GetBounceType: TBounceType;
begin
  Result := FBounceType.ValueOrDefault;
end;

procedure TBouncedRecipientInfo.SetBounceType(const Value: TBounceType);
begin
  FBounceType := Value;
end;

function TBouncedRecipientInfo.IsSetBounceType: Boolean;
begin
  Result := FBounceType.HasValue;
end;

function TBouncedRecipientInfo.GetRecipient: string;
begin
  Result := FRecipient.ValueOrDefault;
end;

procedure TBouncedRecipientInfo.SetRecipient(const Value: string);
begin
  FRecipient := Value;
end;

function TBouncedRecipientInfo.IsSetRecipient: Boolean;
begin
  Result := FRecipient.HasValue;
end;

function TBouncedRecipientInfo.GetRecipientArn: string;
begin
  Result := FRecipientArn.ValueOrDefault;
end;

procedure TBouncedRecipientInfo.SetRecipientArn(const Value: string);
begin
  FRecipientArn := Value;
end;

function TBouncedRecipientInfo.IsSetRecipientArn: Boolean;
begin
  Result := FRecipientArn.HasValue;
end;

function TBouncedRecipientInfo.GetRecipientDsnFields: TRecipientDsnFields;
begin
  Result := FRecipientDsnFields;
end;

procedure TBouncedRecipientInfo.SetRecipientDsnFields(const Value: TRecipientDsnFields);
begin
  if FRecipientDsnFields <> Value then
  begin
    FRecipientDsnFields.Free;
    FRecipientDsnFields := Value;
  end;
end;

function TBouncedRecipientInfo.IsSetRecipientDsnFields: Boolean;
begin
  Result := FRecipientDsnFields <> nil;
end;

end.
