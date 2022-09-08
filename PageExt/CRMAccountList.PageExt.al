pageextension 50041 CRMAccountList extends "CRM Account List"
{
    layout
    {
        addlast(Control2)
        {
            field(AccountId; AccountId)
            {
                ApplicationArea = Suite;
                Caption = 'Account Id';
                Tooltip = 'GUID';
            }
        }
    }


}