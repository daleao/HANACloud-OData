using { odata.db.travel.extern as extern } from '../db/travel-extern';

service travel_extern_service @(path: '/travel') @(requires:'authenticated-user') {
    entity Customers @(restrict: [{grant: 'READ', to: 'Viewer'}, {grant: 'WRITE', to: 'Admin'}]) as select  * from extern.Customers;
    entity LoyaltyCustomers @(restrict: [{grant: 'READ', to: 'Viewer'}, {grant: 'WRITE', to: 'Admin'}]) as select  * from extern.Loyalty;
};