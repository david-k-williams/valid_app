create table ProofOfIncomeReport (
    ReportID uuid primary key default uuid_generate_v4(),
    GeneratedDate timestamp not null,
    ValidUntilDate timestamp not null,
    TotalEarnings numeric(15, 2) not null,
    CustomerID uuid not null references Customer(CustomerID) on delete cascade
);