namespace odata.db;

context travel {
    context extern {
        @cds.persistence.exists
        entity Customers {
            name : String(30) not null; 
            gender : String(6); 
            balance : Decimal(6, 2); 
        };
        @cds.persistence.exists
        entity Loyalty {
            is_loyalty_member : Boolean; 
            trip_count : Integer; 
            balance : Decimal(6, 2); 
        };
    }
}