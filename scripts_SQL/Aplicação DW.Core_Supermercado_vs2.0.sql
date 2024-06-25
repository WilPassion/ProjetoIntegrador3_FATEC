-- 1.0 Tabela Clientes 
CREATE TABLE clientes (
    cliente_id INTEGER PRIMARY KEY,
	cliente_tipo VARCHAR(255),
	cliente_gen VARCHAR(15),
    cliente_nome VARCHAR(500)
);
-- 1.1 Tabela Pagamentos
CREATE TABLE forma_pagamento (
    forma_pgmt_id INTEGER PRIMARY KEY,
    forma_pgmt_desc VARCHAR(35)
);	
--1.2 Tabela Lojas
CREATE TABLE loja (
    loja_id INTEGER PRIMARY KEY,
	loja_cidade VARCHAR(20),
	loja_filial VARCHAR(15),
    loja_nome VARCHAR(200) NOT NULL
);
--1.3 Tabelas Produtos
CREATE TABLE produtos(
    prod_id INTEGER PRIMARY KEY,
    prod_linha VARCHAR(200),
    prod_preco NUMERIC(20,2)
);
-- 1.4 Tabela Fato
CREATE TABLE vendas_fato(
    prod_id INTEGER,
	loja_id INTEGER,
	forma_pgmt_id INTEGER,
	cliente_id INTEGER,
	quantidade INTEGER,
	imposto_5_percent NUMERIC(20,2),
	total NUMERIC(20,2),
	data_venda DATE,
	hora TIME,
	cogs NUMERIC(20,2),
    renda_bruta NUMERIC(20,2),
    margem_bruta_percent NUMERIC(20,2),
    FOREIGN KEY (prod_id) REFERENCES produtos (prod_id),
    FOREIGN KEY (loja_id) REFERENCES loja (loja_id),
    FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id),
    FOREIGN KEY (forma_pgmt_id) REFERENCES forma_pagamento (forma_pgmt_id)
);

--------------------------------
---SELECTS

SELECT * FROM clientes;
SELECT * FROM forma_pagamento;
SELECT * FROM loja;
SELECT * FROM produtos;
SELECT * FROM vendas_fato;



