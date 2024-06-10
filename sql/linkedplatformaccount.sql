create table LinkedPlatformAccount (
    AccountID uuid primary key default uuid_generate_v4(),
    PlatformName varchar(50) not null check (PlatformName in ('Lyft', 'Uber', 'Upwork', 'TaskRabbit', 'DoorDash', 'Upstack', 'Fiverr', 'Instacart', 'Freelancer')),
    PlatformAccountID varchar(255) not null,
    CustomerID uuid not null references Customer(CustomerID) on delete cascade
);