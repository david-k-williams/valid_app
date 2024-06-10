create table Customer (
    CustomerID uuid primary key default uuid_generate_v4(),
    FirstName varchar(255) not null,
    LastName varchar(255) not null,
    Email varchar(255) not null unique,
    PhoneNumber varchar(20),
    DateOfBirth date,
    Address varchar(255),
    City varchar(255),
    State varchar(255),
    PostalCode varchar(20),
    Country varchar(255)
);