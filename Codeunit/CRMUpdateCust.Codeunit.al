codeunit 50040 CRMUpdateCust
{
    trigger OnRun()
    begin
        CRMCustomer.FindSet();
        repeat
            CRMCustomer.CalcFields("CRMLastPostLookup");
            if CRMCustomer."CRMLastPostLookup" > CRMCustomer."CRMLastPostDate" then
                CRMCustomer."CRMLastPostDate" := CRMCustomer."CRMLastPostLookup";
            CRMCustomer.Modify();
        until CRMCustomer.NEXT() = 0;
    end;

    var
        CRMCustomer: Record Customer;
}