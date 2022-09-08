tableextension 50040 "CRMCustomer" extends Customer
{
    fields
    {
        field(50010; "CRMLastPostDate"; Date)
        {
            DataClassification = CustomerContent;

            Caption = 'Siste transaksjonsdato kunde';
        }
        field(50011; "CRMLastPostLookup"; Date)
        {
            FieldClass = FlowField;
            CalcFormula = max("Cust. Ledger Entry"."Posting Date"
            where("Customer No." = field("No.")));

            Caption = 'Siste transaksjonsdato';
        }
        field(50012; "COMCRMLastPostDate"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Do not use this field';
        }

    }
}