drop database if exists zupanija;
create database zupanija;
use zupanija;

CREATE TABLE projekt;
sifra int NOT NULL PRIMARY KEY auto_increment,
naziv varchar (50) NOT NULL, 
cijena decimal (18,2)

create table zupanija(
sifra int not null primary key auto_increment,
naziv varchar (50) not null,
zupan int not null
);

create table opcina( 
sifra int not null primary key auto_increment,
naziv varchar(50) not null,
zupanija int not null
);

alter table opcina add foreign key (zupanija) references zupanija (sifra)
alter table zupanija add foreign key (opcina) references opcina (sifra)
