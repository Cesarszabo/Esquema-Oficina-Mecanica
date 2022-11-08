create database Oficina;
use Oficina;

create table Cliente(
IdCliente int auto_increment primary key,
Identicacao int not null,
Endereço varchar(45) not null,
Telefone int(15) not null,
FkIdVeiculo int
);
create table Veiculo(
IdVeiculo int auto_increment primary key,
Marca varchar(15) not null,
Modelo varchar(15) not null,
FkIdOrdemServico int
);
create table OrdemServico(
IdOrdemServico int auto_increment primary key,
DataAbertura date not null,
DataConclusao date,
Valor float,
StatusOrdemServico enum("Em andamento", "Concluido","Cancelada") 
);
create table Mecanico(
IdMecanico int auto_increment primary key,
NomeMecanico varchar(45) not null,
Especialidade varchar(10) not null,
Endereco varchar(45) not null,
Bairro varchar(15),
CEP int(10)
);
create table PecasManutencao(
idPecasManutencao int auto_increment primary key,
NomePeca varchar(15) not null,
ValorPeca float not null
);
create table Cliente_has_OrdemServico(
FkIdCliente int,
FkIdOrdemServico int,
DataStatus date,
StatusCliente enum("Aprovado","Rejeitado","Pago")
);
create table OrdemServico_has_PecasManutencao(
Quantidade int,
ValorUnitario float
);
create table OrdemServico_has_Mecanico(
FkIdOrdemServico int,
FkIdMecanico int,
TipoManutenção varchar(20),
ValorManutencao float,
DataStatus date,
StatusEquipe enum("Em Andamento","Finalizado")
);
