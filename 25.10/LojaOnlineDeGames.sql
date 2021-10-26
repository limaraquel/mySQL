-- Crie um banco de dados para um serviço de um game Online cujo o nome db_game_

use db_games;
-- O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
-- Crie uma tabela tb_classe e determine 3 atributos relevantes da classe para se trabalhar com o serviço game online
create table tb_classe (
id bigint auto_increment, 
Poder varchar (255),
Elemento varchar (255),
Arma varchar (255),
primary key (id)
);

-- Popule esta tabela classe com até 5 dados.

      insert into tb_classe (Nome, Elemento, Arma) values ("Força","Ar","Machado");
      insert into tb_classe (Nome, Elemento, Arma) values ("Velocidade","Terra","Carro de corrida");
      insert into tb_classe (Nome, Elemento, Arma) values ("Magia","Ar","Cajado Mágico");
      insert into tb_classe (Nome, Elemento, Arma) values ("Invisibilidade","Ar","Capa");
      insert into tb_classe (Nome, Elemento, Arma) values ("Feitiçaria","Ar","Bonecas");
      
      select * from tb_classe;
-- Crie uma tabela tb_personagem  e determine 5 atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
create table tb_personagem(
id bigint auto_increment,
Nome varchar (255),
Nível int,
Defesa int,
Ataque int,
Idade int,
Classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe(id)
);

-- Popule esta tabela personagem com até 8 dados. 

		insert into tb_personagem (Nome,Nível,Defesa,Ataque,Idade,Classe_id) values ("Ralph",100,2000,3000,20,1);
        insert into tb_personagem (Nome,Nível,Defesa,Ataque,Idade,Classe_id) values ("Agnes",2000,1100,250,18,2);
        insert into tb_personagem (Nome,Nível,Defesa,Ataque,Idade,Classe_id) values ("Malévola",5000,7000,9000,30,3);
        insert into tb_personagem (Nome,Nível,Defesa,Ataque,Idade,Classe_id) values ("Harry Potter",3000,1000,3000,17,4);
        insert into tb_personagem (Nome,Nível,Defesa,Ataque,Idade,Classe_id) values ("Beldam",100,2000,300,40,5);
 
select * from tb_personagem;

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagem where Ataque > 2000;

-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagem where Defesa between 1000 and 2000;

-- Faça um select utilizando LIKE buscando os personagens com a letra C. (mudei de C p/ M) 

select * from tb_personagem where Nome like "%m%";

-- Faça um um select com Inner join entre tabela classe e personagem.
select * from tb_personagem inner join tb_classe on tb_personagem.classe_id;

-- Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).
select tb_personagem.Nome, tb_classe.Poder from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id
where tb_classe.id =2;
