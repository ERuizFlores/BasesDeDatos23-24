create table category (
    cat_id int primary key auto_increment,
);

create table discount (
    d_id int primary key auto_increment,
);

create table item (
    it_id int primary key auto_increment,
    category_id int,
    d_id int,
    foreign key (d_id) references discount (d_id),
    foreign key (category_id) references category (cat_id)
);

create table customer (
    id int primary key auto_increment,
    name varchar (255) not null,
    address varchar (255) not null,
);

create table discount_customer (
    discount_id int,
    customer_id int,
    primary key (discount_id, customer_id),
    foreign key (discount_id) references discount (d_id),
    foreign key (customer_id) references customer (id)
);


