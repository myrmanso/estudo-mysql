use bd_seg_n;

create table cliente
(
cod_cli smallint not null,
nome_cli varchar(40) not null,
endereco varchar(40) null,
cidade varchar(20) null,
cep char(08) null,
uf char(02) null,
primary key (cod_cli)); 

create table vendedor
(
cod_vend smallint not null auto_increment,
nome_vend varchar(40) not null,
sal_fixo numeric(9,2) not null,
faixa_comiss char(01) not null,
primary key (cod_vend));

create table produto
(
cod_prod smallint not null auto_increment,
unid_prod char(03) not null,
desc_prod varchar(20) not null,
val_unit numeric(9,2) not null,
primary key (cod_prod));

insert into vendedor (nome_vend,sal_fixo,faixa_comiss)
			values ('Roberto da Silva', 1350.34, '1');
insert into vendedor (nome_vend,sal_fixo,faixa_comiss)
			values ('Mayara Manso', 1350.34, '1');
select * from vendedor;

drop table vendedor;

create table vendedor
(
cod_vend smallint not null auto_increment,
nome_vend varchar(40) not null,
sal_fixo numeric(9,2) not null,
faixa_comiss char(01) not null,
primary key (cod_vend));

insert into vendedor (nome_vend,sal_fixo,faixa_comiss)
			values ('Roberto da Silva', 1350.34, '1');
insert into vendedor (nome_vend,sal_fixo,faixa_comiss)
			values ('Mayara Manso', 1350.34, '1');
select * from vendedor;

drop table produto;

 




