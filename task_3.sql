CREATE SCHEMA IF NOT EXISTS burgernaya;
SET search_path = burgernaya, public;

create table client
(
    client_id    serial
        primary key,
    client_name  text not null,
    client_phone text not null
        unique
        constraint chk_phone
            check (length(client_phone) = 11),
    client_email text
        unique
        constraint chk_email
            check (client_email ~~ '%@%.%'::text)
);
create table loyalty_card
(
    card_id       serial
        primary key,
    owner_id      integer
        references client,
    creation_date date not null
);
create table ingredients
(
    ingredient_id   serial
        primary key,
    ingredient_name text not null unique,
    is_spicy        boolean default false
);
create table menu
(
    product_id            serial
        primary key,
    product_price         integer not null
        constraint chk_price
            check (product_price > 0),
    product_special_price integer not null
        constraint chk_special_price
            check (product_special_price <= menu.product_price),
    product_name          text    not null unique
);
create table menu_item
(
    product_id    integer
        references menu,
    ingredient_id integer
        references ingredients,
    grams         integer not null
);
create table restaurant
(
    restaurant_id      serial
        primary key,
    restaurant_address text not null
        unique
);
create table employee
(
    employee_id    serial
        primary key,
    restaurant_id  integer
        references restaurant,
    employee_phone varchar(11) not null unique,
    employee_email text unique
        constraint chk_email
            check (employee_email ~~ '%@%.%'::text),
    name           text
);
create table orders
(
    order_id      serial
        primary key,
    employee_id   integer
        references employee,
    client_id     integer
        references client,
    restaurant_id integer
        references restaurant,
    date          date not null,
    tip           integer default 0
        constraint chk_tip
            check (tip >= 0),
    loyalty_card  boolean default false
);
create table order_content
(
    order_id   integer
        references orders,
    product_id integer
        references menu,
    quantity   integer default 1 not null
);
