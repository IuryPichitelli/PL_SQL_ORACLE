-- ############################################
--         FILTROS AVAN�ADOS NO SQL
-- ############################################

-- O QUE VEREMOS NA AULA DE HOJE
-- 1) WHERE
-- 2) AND e OR
-- 3) LIKE
-- 4) IN


-- ################# IN�CIO #################

-- 1. FILTRANDO DADOS DE UMA TABELA: COMANDO WHERE

-- O comando WHERE � usado para para filtrar tabelas em um banco de dados. Sua sintaxe � muito simples:

/*
****** Sintaxe ******

SELECT coluna1, coluna2, ...
FROM tabela
WHERE condicao;

*/

-- Dentro de 'condicao' podemos usar uma s�rie de operadores, como: IN, BETWEEN, LIKE, AND, OR,
-- e assum vai. Veremos v�rios exemplos de aplica��o.


-- i) Filtre a tabela EMPLOYEES e retorne apenas 
-- os funcion�rios do departamento ID = 100




-- 2. Filtro WHERE combinado com AND e OR.

-- Os operadores AND e OR nos permitem criar filtros a partir de mais de uma coluna da tabela.

/*
****** Sintaxe ******
-- AND
-- Todas as condi��es devem ser VERDADEIRAS

SELECT coluna1, coluna2, ...
FROM tabela
WHERE condicao1 AND condicao2;

*/

/*
****** Sintaxe ******
-- OR
-- Basta que 1 condi��o seja VERDADEIRA

SELECT coluna1, coluna2, ...
FROM tabela
WHERE condicao1 AND condicao2;

*/


-- ## EXEMPLO ##############################################################
-- i) Quais funcion�rios t�m o JOB_ID = 'IT_PROG' e SALARY >= 5000?



-- ## EXEMPLO ##############################################################
-- ii) Quais funcion�rios s�o do departamento 90 ou 100?




-- 3. Operador LIKE
-- O operador LIKE permite que a gente fa�a filtros que buscam um padr�o dentro de uma coluna.

/*
****** Sintaxe ******

SELECT coluna1, coluna2, ...
FROM tabela
WHERE coluna1 LIKE 'padrao';
*/

-- ## EXEMPLO ##############################################################
-- i) Quais funcion�rios possuem um JOB_ID que come�a com o texto: 'ST'?



-- 5. OPERADOR IN

-- O operador IN permite especificar m�ltiplos valores no filtro.

/*
****** Sintaxe ******

SELECT coluna1, coluna2, ...
FROM tabela
WHERE coluna1 IN (valor1, valor2, valor3, ...);

*/

-- ## EXEMPLO ##############################################################
-- i) Selecione os funcion�rios que s�o de um dos seguintes 
-- departamentos: 30, 50, 80.



