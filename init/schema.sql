create DATABASE teste;

create table if not exists teste.users(
    id int auto_increment primary key,
    name varchar(255) not null
) engine=innodb; 