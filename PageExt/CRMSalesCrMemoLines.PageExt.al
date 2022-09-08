pageextension 50042 CRMSalesCrMemoLines extends "Sales Cr. Memo Subform"
{
    layout
    {
        addlast(Control1)
        {
            field(Document_No; rec."Document No.")
            {
                ApplicationArea = All;
                Editable = false;
            }
            field(Line_No; rec."Line No.")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
    }
}