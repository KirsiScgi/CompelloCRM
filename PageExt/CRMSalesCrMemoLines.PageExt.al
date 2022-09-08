pageextension 50042 CRMSalesCrMemoLines extends "Sales Cr. Memo Subform"
{
    layout
    {
        addlast(Control1)
        {
            field(DocumentNo; rec."Document No.")
            {
                ApplicationArea = All;
                Editable = false;
            }
            field(LineNo; rec."Line No.")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
    }
}