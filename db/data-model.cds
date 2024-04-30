namespace scp.cloud;

using
{
    sap.common.CodeList,
    cuid,
    managed
}
from '@sap/cds/common';

entity RequestUI : cuid, managed
{
    key RequestID : String(10)
        @title : 'Request ID';
    RequestType : Association to one RequestTypes
        @title : 'Request Type';
    RequestorEmail : String(40)
        @title : 'Requestor Email';
    FirstName : String(40)
        @title : 'First Name';
    LastName : String(40)
        @title : 'Last Name';
    GlobalRegion : Association to one GlobalRegions
        @title : 'Global Region';
    BusinessUnit : Association to one BusinessUnits
        @title : 'Business Unit';
    Function : String(20)
        @title : 'Function';
    Country : Association to one Countries
        @title : 'Country';
    ExpectedDueDate : Date
        @title : 'Expected Due Date';
    Priority : Association to one Priorities
        @title : 'Priority';
    CreatedOnDate : Date
        @title : 'Created On Date';
    Comments : String(250)
        @title : 'Comments';
}

entity RequestTypes : CodeList
{
    key code : String(12);
}

entity GlobalRegions : CodeList
{
    key code : String(12);
}

entity BusinessUnits : CodeList
{
    key code : String(12);
}

entity Priorities : CodeList
{
    key code : String(12);
}

entity Countries : CodeList
{
    key code : String(12);
}