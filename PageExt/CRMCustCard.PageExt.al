pageextension 50040 CRMCustCard extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field(CRMLastPostDate; rec.CRMLastPostDate)
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Latest Transaction Date on the customer';
            }
        }
    }
    actions
    {
        addlast(navigation)
        {
            action(COMCRMCustDate)
            {
                Caption = 'Update last Trans. Date';
                ApplicationArea = all;
                Image = Process;
                ToolTip = 'Update Last Trans. Date before sending to Dataverse';
                trigger OnAction();
                begin
                    UpdateLastDate();
                end;
            }
            action(COMCRMRunJob)
            {
                Caption = 'Update all customers';
                ApplicationArea = all;
                Image = Process;
                ToolTip = 'Update Last Trans. Date before sending to Dataverse';
                trigger OnAction();
                begin
                    RunJob();
                end;
            }
        }
    }
    local procedure UpdateLastDate()
    var
    begin
        CalcFields("CRMLastPostLookup");
        if "CRMLastPostLookup" > "CRMLastPostDate" then
            "CRMLastPostDate" := "CRMLastPostLookup";
        Modify();
    end;

    local procedure RunJob()
    var
        COMCRMUpdateCust: Codeunit CRMUpdateCust;
    begin
        COMCRMUpdateCust.Run();
    end;
}