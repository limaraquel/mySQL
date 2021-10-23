use db_escola;
-- criando a tabela
create table tb_alunos (

 id bigint auto_increment,
 nome varchar(30) not null,
 sexo char,
 turma bigint not null,
 idade bigint,
 nota decimal (8.2),
 
 primary key(id)
 );
 

 -- preenchendo as colunas da tabela
 
 insert into tb_alunos (nome,sexo,turma,idade,nota) values ("Ana Beatriz","F",22,12,5.5);
 insert into tb_alunos (nome,sexo,turma,idade,nota) values ("Carlos","M",22,13,9.0);
 insert into tb_alunos (nome,sexo,turma,idade,nota) values ("Joana","F",25,12,2.5);
 insert into tb_alunos (nome,sexo,turma,idade,nota) values ("Karyna","F",24,13,7.0);
 insert into tb_alunos (nome,sexo,turma,idade,nota) values ("Wendell","M",32,12,3.5);
 insert into tb_alunos (nome,sexo,turma,idade,nota) values ("Renan","M",24,14,8.5);
 insert into tb_alunos (nome,sexo,turma,idade,nota) values ("Maria","F",25,13,6.5);
 insert into tb_alunos (nome,sexo,turma,idade,nota) values ("Tauane","F",23,12,6.6);
 
 -- visualiza a tabela preenchida
 select* from tb_alunos;
 
select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;

update tb_alunos set nome = "Tauane" 
where id = 8;

select*from tb_alunos;