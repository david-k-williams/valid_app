create table IncomeStatement (
    IncomeStatementID uuid primary key default uuid_generate_v4(),
    StatementDate timestamp not null,
    Earnings numeric(15, 2) not null,
    PlatformName varchar(50) not null check (PlatformName in ('Lyft', 'Uber', 'Upwork', 'TaskRabbit', 'DoorDash', 'Upstack', 'Fiverr', 'Instacart', 'Freelancer')),
    CustomerID uuid not null references Customer(CustomerID) on delete cascade
);