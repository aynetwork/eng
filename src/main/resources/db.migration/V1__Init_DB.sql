create sequence hibernate_sequence start 1 increment 1;

create table user_role (
    user_id int8 not null,
    roles varchar(255)
);

create table usr (
    id int8 not null,
    username varchar(255) not null,
    email varchar(255),
    password varchar(255) not null,
    activation_code varchar(255),
    active boolean DEFAULT true not null,
    rating int8,
    country VARCHAR,
    lichess VARCHAR,
    image VARCHAR,
    primary key (id)
);

CREATE SEQUENCE id_seq;
ALTER TABLE usr ALTER COLUMN id SET DEFAULT nextval('id_seq');

