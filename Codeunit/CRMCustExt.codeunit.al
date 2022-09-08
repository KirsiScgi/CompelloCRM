codeunit 50041 "CRMCustExt"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"CDS Setup Defaults", 'OnAfterResetCustomerAccountMapping', '', true, true)]
    local procedure HandleOnAfterResetCustomerAccount(IntegrationTableMappingName: Code[20])
    var
        CGICOM1CDSAccount: Record "CRM Account";
        CGICOM1Customer: Record Customer;
        IntegrationFieldMapping: Record "Integration Field Mapping";
    begin
        InsertIntegrationFieldMapping(
            IntegrationTableMappingName,
            CGICOM1Customer.FieldNo("CRMLastPostDate"),
            CGICOM1CDSAccount.FieldNo(cust_lastdate),
            IntegrationFieldMapping.Direction::ToIntegrationTable,
            '', true, false);
        //ModifyIntegrationField(52804);
    end;


    procedure InsertIntegrationFieldMapping(IntegrationTableMappingName: Code[20]; TableFieldNo: Integer; IntegrationTableFieldNo: Integer; SynchDirection: Option; ConstValue: Text; ValidateField: Boolean; ValidateIntegrationTableField: Boolean)
    var
        IntegrationFieldMapping: Record "Integration Field Mapping";
    begin
        IntegrationFieldMapping.CreateRecord(IntegrationTableMappingName, TableFieldNo, IntegrationTableFieldNo, SynchDirection,
            ConstValue, ValidateField, ValidateIntegrationTableField);
    end;

    procedure ModifyIntegrationField(keyno: Integer)
    var
        IntegrationFieldMapping: Record "Integration Field Mapping";
    begin
        if IntegrationFieldMapping.Get(keyno) then begin
            IntegrationFieldMapping.Direction := IntegrationFieldMapping.Direction::FromIntegrationTable;
            IntegrationFieldMapping.Modify();
        end;
        ;
    end;
}