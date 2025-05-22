-- tabela cliente

create table cliente (
	cpf varchar(11) primary key unique not null,
	nome varchar(100) not null,
	data_nascimento date not null,
	email varchar(70) not null,
	telefone varchar(20) not null
);

-- tabela aeroporto

create table aeroporto (
    id_aeroporto varchar(10) primary key,
    nome varchar(60) not null,
    estado varchar(2) not null, -- sigla do estado 
    cidade varchar(60) not null
);

-- tabela avião

create table avioes (
    id_aviao varchar(10) primary key,
    modelo varchar(50) not null,
    capacidade int not null,
    companhia varchar(30) not null
);

-- tabela voos

create table voos (
	id_voo varchar(10) primary key,
	horario varchar(10) not null,
	id_aviao varchar(10) references avioes(id_aviao),
	id_aeroporto varchar(10) references aeroporto(id_aeroporto)
);

-- tabela passagem

create table passagem (
	id_passagem varchar(10) primary key,
	cpf_cliente varchar(11) not null references cliente(cpf),
	id_voo varchar(10) not null references voos(id_voo),
	data date not null,
	poltrona varchar(5) not null,
	classe varchar(50) not null,
	preco decimal(10,2) not null
);

-- --------------------------------------------
-- VIEW: Histórico de passagens por cliente
-- --------------------------------------------

--a) View para consultar histórico de passagens de um cliente
CREATE VIEW historico_passagens_cliente AS
SELECT 
    c.nome,
    p.id_passagem,
    v.id_voo,
    a.modelo AS aviao,
    ar.nome AS aeroporto,
    p.data,
    p.poltrona,
    p.classe,
    p.preco
FROM 
    cliente c
JOIN passagem p ON c.cpf = p.cpf_cliente
JOIN voos v ON p.id_voo = v.id_voo
JOIN avioes a ON v.id_aviao = a.id_aviao
JOIN aeroporto ar ON v.id_aeroporto = ar.id_aeroporto;

-- b) Function para calcular o total gasto por um cliente
CREATE FUNCTION total_gasto_cliente(cpf_input VARCHAR(11))
RETURNS DECIMAL(10,2)
BEGIN
    DECLARE total DECIMAL(10,2);
    SELECT SUM(preco) INTO total
    FROM passagem
    WHERE cpf_cliente = cpf_input;
    RETURN IFNULL(total, 0);
END;

-- c) Regras de acesso
-- Criação de role
CREATE ROLE cliente_usuario;

-- Permissões restritas
GRANT SELECT ON cliente TO cliente_usuario;
GRANT SELECT ON historico_passagens_cliente TO cliente_usuario;

-- Revoga alterações diretas
REVOKE INSERT, UPDATE, DELETE ON cliente FROM cliente_usuario;
REVOKE INSERT, UPDATE, DELETE ON passagem FROM cliente_usuario;
