unit AWS.SNS.Transform.TopicLimitExceededExceptionUnmarshaller;

interface

uses
  AWS.Transform.IErrorResponseUnmarshaller, 
  AWS.Transform.UnmarshallerContext, 
  AWS.SNS.Model.TopicLimitExceededException, 
  AWS.Internal.ErrorResponse, 
  AWS.Transform.SimpleTypeUnmarshaller;

type
  ITopicLimitExceededExceptionUnmarshaller = IErrorResponseUnmarshaller<ETopicLimitExceededException, TXmlUnmarshallerContext>;
  
  TTopicLimitExceededExceptionUnmarshaller = class(TInterfacedObject, IErrorResponseUnmarshaller<ETopicLimitExceededException, TXmlUnmarshallerContext>)
  strict private
    class var FInstance: ITopicLimitExceededExceptionUnmarshaller;
    class constructor Create;
  public
    function Unmarshall(AContext: TXmlUnmarshallerContext): ETopicLimitExceededException; overload;
    function Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETopicLimitExceededException; overload;
    class function Instance: ITopicLimitExceededExceptionUnmarshaller; static;
  end;
  
implementation

{ TTopicLimitExceededExceptionUnmarshaller }

function TTopicLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext): ETopicLimitExceededException;
var
  ErrorResponse: TErrorResponse;
begin
  ErrorResponse := TErrorResponse.Create;
  try
    Result := Unmarshall(AContext, ErrorResponse);
  finally
    ErrorResponse.Free;
  end;
end;

function TTopicLimitExceededExceptionUnmarshaller.Unmarshall(AContext: TXmlUnmarshallerContext; AErrorResponse: TErrorResponse): ETopicLimitExceededException;
var
  OriginalDepth: Integer;
  TargetDepth: Integer;
  Response: ETopicLimitExceededException;
begin
  Response := ETopicLimitExceededException.Create(AErrorResponse.Message, AErrorResponse.InnerException, AErrorResponse.ErrorType, AErrorResponse.Code, AErrorResponse.RequestId, AErrorResponse.StatusCode);
  try
    OriginalDepth := AContext.CurrentDepth;
    TargetDepth := OriginalDepth + 1;
    if AContext.IsStartOfDocument then
      Inc(TargetDepth, 2);
    while AContext.ReadAtDepth(OriginalDepth) do
      if AContext.IsStartElement or AContext.IsAttribute then
        if AContext.TestExpression('message', TargetDepth) then
        begin
          var Unmarshaller := TStringUnmarshaller.Instance;
          Response.Message := Unmarshaller.Unmarshall(AContext);
          Continue;
        end;
    Result := Response;
    Response := nil;
  finally
    Response.Free;
  end;
end;

class constructor TTopicLimitExceededExceptionUnmarshaller.Create;
begin
  FInstance := TTopicLimitExceededExceptionUnmarshaller.Create;
end;

class function TTopicLimitExceededExceptionUnmarshaller.Instance: ITopicLimitExceededExceptionUnmarshaller;
begin
  Result := FInstance;
end;

end.
