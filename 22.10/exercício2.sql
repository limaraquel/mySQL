create database ecommerce;
create table tb_produtos;
id bigint auto_increment,
nome varchar(30) not null,
marcar varchar(30) not null,
cor varchar (20) not null,
quantidade int not null,
disponivel boolean,

primary key(id)
);

alter table tb_produtos add column preço decimal(8,2) not null;
alter table tb_produtos change preço  preco decimal;

insert into tb_produtos(nome, marcar,cor, quantidade, disponivel) Values("Short jeans", "Renner","Azul claro",3,true);
insert into tb_produtos(nome, marcar,cor, quantidade, disponivel) Values("Fone de ouvido", "Xiaomi","Branco",30,true);
insert into tb_produtos(nome, marcar,cor, quantidade, disponivel) Values("Celular", "Samsung","Prata",20,true);
insert into tb_produtos(nome, marcar,cor, quantidade, disponivel) Values("Bolsa", "Prada","Dourada",2,false);
insert into tb_produtos(nome, marcar,cor, quantidade, disponivel) Values("Vestido", "Versace","Azul",40,true);
insert into tb_produtos(nome, marcar,cor, quantidade, disponivel) Values("Calça", "Tommy","Preto e Branco",0,false);
insert into tb_produtos(nome, marcar,cor, quantidade, disponivel) Values("Relógio", "Hugo Boss","Dourado",10,true);

select*from tb_produtos;
select*from tb_produtos;

update tb_produtos set preco = 1200
where id = 1;
update tb_produtos set preco = 3000.00
where id = 2;
update tb_produtos set preco = 3500.00
where id = 3;
update tb_produtos set preco = 100.00
where id = 4;
update tb_produtos set preco = 70.00
where id = 5;
update tb_produtos set preco = 50.00
where id = 6;
update tb_produtos set preco = 60.00
where id = 7;

select * from tb_produtos;
select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set preco = 85
where id = 5;
select*from tb_produtos;