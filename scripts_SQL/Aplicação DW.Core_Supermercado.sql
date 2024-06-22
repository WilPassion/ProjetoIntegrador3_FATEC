-- 1.0 Tabelas de Clientes (Mesma base da Unictec)

CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    cliente_tipo VARCHAR(255),
    cliente_gen VARCHAR(15),
    cliente_nome VARCHAR(500)
);
	
--1.1 Tabelas de Corelação com Produtos


CREATE TABLE produtos(
    prod_id SERIAL PRIMARY KEY,
    prod_linha VARCHAR(200) NOT NULL,
    prod_preco DECIMAL (5,2) NOT NULL
);
-- 1.2 Tabelas Pagamento, Caixa e afins

CREATE TABLE forma_pagamento (
    forma_pgmt_id SERIAL PRIMARY KEY,
    forma_pgmt_desc VARCHAR(35)
)

DROP TABLE forma_pagamento

--1.3 Loja, Fornecedores e Estoque Regional
CREATE TABLE loja (
    loja_id SERIAL PRIMARY KEY,
    loja_cidade VARCHAR (20) NOT NULL,
    loja_filia VARCHAR(15),
    loja_nome VARCHAR(200) NOT NULL
)

INSERT INTO forma_pagamento VALUES ('Ewallet'), ('Cash'), ('Credit card')

-- 1.4 Tabelas FATOS
CREATE TABLE vendas (
    id_fatura SERIAL PRIMARY KEY,
    loja_filia VARCHAR(10),
    loja_cidade VARCHAR(50),
    cliente_tipo VARCHAR(10),
    cliente_gen VARCHAR(10),
    prod_linha VARCHAR(50),
    prod_preco DECIMAL(5, 2),
    quantidade INT,
    imposto_5_percent DECIMAL(10, 2),
    total DECIMAL(10, 2),
    data_venda DATE,
    hora TIME,
    forma_pgmt_desc VARCHAR(20),
    cogs DECIMAL(10, 2),
    margem_bruta_percent DECIMAL(10, 2),
    renda_bruta DECIMAL(10, 2),
    avaliacao DECIMAL(3, 1),
    cliente_nome VARCHAR(50)
);

DROP TABLE vendas


SELECT prod_id, loja_id, forma_pgmt_id, cliente_id, quantidade, imposto_5_percent, total,  data_venda, hora, cogs, renda_bruta, margem_bruta_percent
INTO vendas_fato
FROM vendas A 
INNER JOIN clientes B ON A.cliente_nome = B.cliente_nome
INNER JOIN  loja C ON A.loja_filia = C.loja_filia
INNER JOIN forma_pagamento D ON A.forma_pgmt_desc = D.forma_pgmt_desc
INNER JOIN produtos E ON A.prod_linha = E.prod_linha AND A.prod_preco = E.prod_preco




SELECT * FROM vendas_fato