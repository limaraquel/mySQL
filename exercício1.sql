use db_funcionarios;
create database db_funcionarios;

-- criando a tabela
create table tb_rh (
id bigint auto_increment,
nome varchar(30) not null,
idade bigint not null,
cpf bigint not null,
email varchar(50) not null,
telefone bigint not null,

primary key(id)
);

alter table tb_rh add column salario bigint;

-- preenchendo os dados da tabela
insert into tb_rh (nome,idade,cpf,email,telefone,salario) values ("Raquel", 19,44550908866,"limarakel9@gmail.com",11-960166765,5000);
insert into tb_rh (nome,idade,cpf,email,telefone,salario) values ("Mariana", 22,0078621829,"marianaa@gmail.com",11-959645736,2000);
insert into tb_rh (nome,idade,cpf,email,telefone,salario) values ("Renato", 26,446789549900,"renatolima@hotmail.com",1199876543,5000);
insert into tb_rh (nome,idade,cpf,email,telefone,salario) values ("Joana", 27,00986547766,"joanass@hotmail.com",11979989293,1500);
insert into tb_rh (nome,idade,cpf,email,telefone,salario) values ("Marcos", 21,0009865377,"marcos@gmail.com",1197593748,1200);
insert into tb_rh (nome,idade,cpf,email,telefone,salario) values ("Stefanny",29,119785641,"stefany@gmail.com",119880067,1000);
select*from tb_rh;

select * from tb_rh where salario >2000;
select * from tb_rh where salario < 2000;

update tb_rh set cpf = 42345546 
where id = 1;
update tb_rh set telefone = 11954923456
where id =1;
update tb_rh set telefone = 119542943410
where id = 2;
update tb_rh set salario = 2500
where id = 5;
select * from tb_rh;