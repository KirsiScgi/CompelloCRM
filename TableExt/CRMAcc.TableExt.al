tableextension 50001 CRMAcc extends "CRM Account"
{
    fields
    {
        field(50010; cust_lastdate; Date)
        {
            ExternalName = 'cgi_lasttransactiondate';  //'cust_lastdate';
            ExternalType = 'DateTime';
            Caption = 'Cust Transaction Date';
            DataClassification = CustomerContent;
        }

    }
}