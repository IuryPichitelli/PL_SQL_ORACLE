select nome, idade from funcionarios where UPPER(departamento) like 'VENDAS%' ORDER BY IDADE ASC;

update funcionarios set funcao = 'Assistente de TI ' where funcao = 'Estagiário de TI';

select * from funcionarios where upper(departamento) like 'MARKETING%';

DELETE FROM funcionarios WHERE idade < 25 and upper(departamento) like 'MARKETING%';

select nome, funcao from funcionarios where departamento in ('TI','RH') and lower(funcao) like '%desenvolvedor%';

select departamento, count(*) as count_total from funcionarios group by departamento having count(*) > 10;

select nome, idade from funcionarios where idade between 30 and 40 and UPPER(departamento) like '%VENDAS%';

update funcionarios set funcao = 'Coordenadora de conteúdo' where UPPER(funcao) = 'PRODUTORA DE CONTEÚDO' and departamento = 'Marketing';

select IDADE from funcionarios where departamento = 'TI';

delete from funcionarios where idade > 40 and departamento like 'TI';

select nome, departamento from funcionarios where funcao like 'Analista%' or funcao like 'Consultor%';

select * from funcionarios order by departamento, idade desc;

SELECT 
  CASE
    WHEN idade < 30 THEN 'Menores de 30'
    WHEN idade BETWEEN 30 AND 40 THEN 'Entre 30 e 40'
    ELSE 'Maiores de 40'
  END AS faixa_etaria,
  COUNT(*) AS total_funcionarios
FROM funcionarios
GROUP BY
  CASE
    WHEN idade < 30 THEN 'Menores de 30'
    WHEN idade BETWEEN 30 AND 40 THEN 'Entre 30 e 40'
    ELSE 'Maiores de 40'
  END;
