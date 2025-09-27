/* CRUD (Comandos DDL, DML e TCL)
*
*

-- I. O que � CRUD e o que s�o os comandos DDL e DML.

CRUD � um nome dado para as opera��es realizadas dentro de um banco de dados. � a sigla para:
CREATE, READ, UPDATE e DELETE.

De forma mais geral, podemos dividir os comandos dentro de um banco de dados em alguns grupos:

- DDL: Data Definition Language
S�o comandos para manipula��o de objetos em um banco de dados.

Exemplos: CREATE, ALTER, TRUNCATE, DROP, COMMENT

- DML: Data Manipulation Language
S�o comandos para manipula��o de dados em um banco de dados.

Exemplos: INSERT, UPDATE, DELETE, SELECT


-- II. Tipos de Dados

-- Os dados armazenados dentro de um banco de dados poder�o ser de uma s�rie de tipos.
-- Abaixo, listamos os mais comuns.

-- 1. INT
-- 2. NUMBER(p, s)
-- 3. VARCHAR2(n)
-- 4. DATE
*/


-- III. DDL CREATE
-- Vamos criar 3 tabelas de exemplos.

-- Tabela 1: CLIENTES

-- A tabela CLIENTES deve conter as seguintes colunas:

-- Coluna 1: id_cliente do tipo INT
-- Coluna 2: nome_cliente do tipo VARCHAR2
-- Coluna 3: sexo do tipo VARCHAR2
-- Coluna 4: email do tipo VARCHAR2
-- Coluna 5: data_nascimento do tipo DATE

CREATE TABLE clientes(
    id_cliente INT,
    nome_cliente VARCHAR2(50),
    sexo VARCHAR2 (1),
    email VARCHAR2 (50),
    data_nascimento DATE
);

-- Tabela 2: PRODUTOS

-- A tabela PRODUTOS deve conter as seguintes colunas:

-- Coluna 1: id_produto do tipo INT
-- Coluna 2: nome_produto do tipo VARCHAR2
-- Coluna 3: marca do tipo VARCHAR2
-- Coluna 4: categoria do tipo VARCHAR2
-- Coluna 5: preco_unit do tipo DECIMAL
-- Coluna 6: custo_unit do tipo DECIMAL

CREATE TABLE produtos (
    id_produto INT,
    nome_produto VARCHAR2(50),
    marca VARCHAR2(50),
    categoria VARCHAR2(50),
    preco_unit NUMBER(10,2),
    custo_unit NUMBER(10,2)
);

-- Tabela 3: VENDAS

-- A tabela VENDAS deve conter as seguintes colunas:

-- Coluna 1: id_venda do tipo INT
-- Coluna 2: data_venda do tipo DATE
-- Coluna 3: id_cliente do tipo INT
-- Coluna 4: id_produto do tipo INT
-- Coluna 5: quantidade do tipo DECIMAL

CREATE TABLE vendas(
    id_venda INT,
    data_venda DATE,
    id_cliente INT,
    id_produto INT,
    quantidade NUMBER(10,2)
);


-- DML INSERT INTO
-- Para preencher os dados nas tabelas, usamos o INSERT INTO.

-- Preenche a tabela CLIENTES

INSERT INTO clientes( id_cliente, nome_cliente, sexo, email, data_nascimento) VALUES
(1, 'Iury', 'M', 'iury@gmail.com', TO_DATE('11/10/2001', 'DD/MM/YYYY'));
INSERT INTO clientes( id_cliente, nome_cliente, sexo, email, data_nascimento) VALUES
(2, 'Joana', 'F', 'joana@gmail.com', TO_DATE('23/02/1990', 'DD/MM/YYYY'));
INSERT INTO clientes( id_cliente, nome_cliente, sexo, email, data_nascimento) VALUES
(3, 'Paulo', 'M', 'paulo@gmail.com', TO_DATE('05/06/1982', 'DD/MM/YYYY'));

-- Preenche a tabela PRODUTOS

INSERT INTO produtos(id_produto, nome_produto, marca, categoria, preco_unit, custo_unit) VALUES
	(1,  'iPhone 11',   'Apple', 'Celular', 3500, 2200);
INSERT INTO produtos(id_produto, nome_produto, marca, categoria, preco_unit, custo_unit) VALUES
    (2,  'iPhone 12',   'Apple', 'Celular', 4100, 3000);
INSERT INTO produtos(id_produto, nome_produto, marca, categoria, preco_unit, custo_unit) VALUES
    (3,  'Moto G60',   'Motorola', 'Celular', 1600, 800);


-- Preenche a tabela VENDAS

INSERT INTO vendas(id_venda, data_venda, id_cliente, id_produto, quantidade) VALUES
	(1,  '09/01/2022',   3, 1, 2);
INSERT INTO vendas(id_venda, data_venda, id_cliente, id_produto, quantidade) VALUES
    (2,  '10/01/2022',   2, 2, 1);
INSERT INTO vendas(id_venda, data_venda, id_cliente, id_produto, quantidade) VALUES
   (3,  '13/01/2022',   1, 3, 1);
INSERT INTO vendas(id_venda, data_venda, id_cliente, id_produto, quantidade) VALUES
    (4,  '02/02/2022',   1, 1, 1);




-- DML SELECT
-- Criadas as tabelas, podemos usar o comando SELECT para selecion�-las.

select * from vendas;


