pageextension 50043 CRMSalesInvoice extends "Sales Invoice"
{
    layout
    {
        addlast(General)
        {
            field(Sell_to_Customer_No; rec."Sell-to Customer No.")
            {
                ApplicationArea = All;
                Editable = false;
            }
            field(Bill_to_Customer_No; rec."Bill-to Customer No.")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
    }
}