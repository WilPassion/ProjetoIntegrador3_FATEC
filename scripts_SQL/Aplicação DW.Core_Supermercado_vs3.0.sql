-- 1.0 Tabela Entregas

CREATE TABLE entregas (
    pedido_id INTEGER PRIMARY KEY,
	data_venda DATE,
	data_envio DATE,
	data_entrega_estimada DATE,
	data_entrega_real DATE,
    status_entrega VARCHAR(200)
);

-- 1.1 Tabela Clientes

CREATE TABLE clientes (
    cliente_id INTEGER PRIMARY KEY,
    cliente_tipo VARCHAR(255),
    cliente_gen VARCHAR(15),
    cliente_nome VARCHAR(500)
);

-- 1.2 Tabela Pagamentos
CREATE TABLE forma_pagamento (
    forma_pgmt_id INTEGER PRIMARY KEY,
    forma_pgmt_desc VARCHAR(35)
);

-- 1.3 Tabela Lojas
CREATE TABLE loja (
    loja_id INTEGER PRIMARY KEY,
    loja_cidade VARCHAR(20),
    loja_filial VARCHAR(15),
    loja_nome VARCHAR(200) NOT NULL
);

-- 1.4 Tabelas Produtos
CREATE TABLE produtos (
    prod_id INTEGER PRIMARY KEY,
    prod_linha VARCHAR(200),
    prod_preco NUMERIC(20,2)
);

-- 1.5 Tabela Funcionarios

CREATE TABLE funcionarios (
    funcionario_id INTEGER PRIMARY KEY,
    funcionario_gen VARCHAR(10),
    data_nascimento DATE,
    data_contratacao DATE,
    data_demissao DATE,
    salario NUMERIC(20,2),
    cargo VARCHAR(20),
    area VARCHAR(20),
    horas_extras NUMERIC(20,2),
    avaliacao_funcionario NUMERIC(20,2),
    cidade_funcionario VARCHAR(15),
    tipo_contratacao VARCHAR(15)
);

-- 1.6 Tabela Transportadoras
CREATE TABLE transportadoras (
    transportadora_id INTEGER PRIMARY KEY,
    transportadora_nome VARCHAR(15)
);

-- 1.7 Tabela Vendas - Fato

CREATE TABLE vendas_fato (
    pedido_id INTEGER,
    prod_id INTEGER,
    loja_id INTEGER,
    forma_pgmt_id INTEGER,
    funcionario_id INTEGER,
    transportadora_id INTEGER,
    cliente_id INTEGER,
    quantidade INTEGER,
    imposto_5_percent NUMERIC(20,2),
    total NUMERIC(20,2),
    data_venda DATE,
    hora TIME,
    cogs NUMERIC(20,2),
    renda_bruta NUMERIC(20,2),
    margem_bruta_percent NUMERIC(20,2),
    FOREIGN KEY (pedido_id) REFERENCES entregas (pedido_id),
    FOREIGN KEY (prod_id) REFERENCES produtos (prod_id),
    FOREIGN KEY (loja_id) REFERENCES loja (loja_id),
    FOREIGN KEY (forma_pgmt_id) REFERENCES forma_pagamento (forma_pgmt_id),
    FOREIGN KEY (funcionario_id) REFERENCES funcionarios (funcionario_id),
    FOREIGN KEY (transportadora_id) REFERENCES transportadoras (transportadora_id),
    FOREIGN KEY (cliente_id) REFERENCES clientes (cliente_id)
);

-------------------------
---SELECTS

SELECT * FROM clientes;
SELECT * FROM forma_pagamento;
SELECT * FROM loja;
SELECT * FROM produtos;
SELECT * FROM vendas_fato;
SELECT * FROM transportadoras;
SELECT * FROM funcionarios;
SELECT * FROM entregas;

SELECT COUNT (*) FROM vendas_fato;