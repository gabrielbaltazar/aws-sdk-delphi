unit AWS.SES.Model.UpdateConfigurationSetEventDestinationResponse;

interface

uses
  AWS.Runtime.Model;

type
  TUpdateConfigurationSetEventDestinationResponse = class;
  
  IUpdateConfigurationSetEventDestinationResponse = interface
    function Obj: TUpdateConfigurationSetEventDestinationResponse;
  end;
  
  TUpdateConfigurationSetEventDestinationResponse = class(TAmazonWebServiceResponse, IUpdateConfigurationSetEventDestinationResponse)
  strict protected
    function Obj: TUpdateConfigurationSetEventDestinationResponse;
  end;
  
implementation

{ TUpdateConfigurationSetEventDestinationResponse }

function TUpdateConfigurationSetEventDestinationResponse.Obj: TUpdateConfigurationSetEventDestinationResponse;
begin
  Result := Self;
end;

end.