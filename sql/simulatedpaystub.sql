create table SimulatedPaystub (
    PaystubID uuid primary key default uuid_generate_v4(),
    GeneratedDate timestamp not null,
    PeriodStartDate date not null,
    PeriodEndDate date not null,
    TotalEarnings numeric(15, 2) not null,
    CustomerID uuid not null references Customer(CustomerID) on delete cascade
);