report 50101 "BCT SubScription Customers"
{
    Caption = 'SubScription Customers';
    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/SubScriptionCustomers.rdl';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = where("BCT Subscription Customer" = const(true));

            RequestFilterFields = "No.";
            column(No_Customer; Customer."No.")
            {
                IncludeCaption = true;
            }
            column(Name_Customer; Customer.Name)
            {
                IncludeCaption = true;
            }
            column(City_Customer; Customer.City)
            {
                IncludeCaption = true;
            }
            column(LastModifiedDateTime_Customer; Customer."Last Modified Date Time")
            {
                IncludeCaption = true;
            }
            column(BalanceLCY_Customer; Customer."Balance (LCY)")
            {
                IncludeCaption = true;
            }
        }
        dataitem("Company Information"; "Company Information")
        {
            column(Picture_CompanyInformation; "Company Information".Picture)
            {
            }
            column(CompanyName; COMPANYNAME)
            {
            }
        }
    }


    labels
    {
        ReportNameCap = 'Customer List';

        TotalCap = 'Total';
        OfCap = ' of ';
        PageNoCap = 'Page No';
    }
}

