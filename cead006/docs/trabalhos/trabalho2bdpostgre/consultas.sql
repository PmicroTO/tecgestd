-- lista os produtos de todos os mercados pelo preço em ordem decrescente.

SELECT listapopular.produto.nome,
       listapopular.produto.valor
FROM listapopular.produto
ORDER BY valor DESC;

-- lista os pães em ordem crescente de preço.

SELECT listapopular.produto.nome
FROM listapopular.produto
WHERE nome like '%pao%'
  OR nome like '%Pao%'
ORDER BY valor ASC;

-- lista arroz em ordem crescente de preco

SELECT listapopular.produto.nome,
       listapopular.produto.valor
FROM listapopular.produto
WHERE nome like '%Arroz%'
  OR nome like '%arroz%'
ORDER BY valor ASC;

-- lista os pães mais com valor menor que 11.50 em ordem crescente.

SELECT nome,
       valor
FROM listapopular.produto
WHERE nome like '%pao%'
  OR nome like '%Pao%'
  AND valor < 11.50::money
ORDER BY valor ASC;

-- lista todos os produtos que estão relacionados à uma lista e mostra quais são suas respectivas listas.

SELECT lis.codlista,
       lp.codprod,
       lp.cnpjmer,
       pro.codprod
FROM listapopular.listaprod AS lp,
     listapopular.produto AS pro,
     listapopular.lista AS lis
WHERE pro.cnpjmer = lp.cnpjmer;

-- lista todos os produtos da lista de um usuário dado seu cpf.

SELECT lis.cpfcli,
       cli.nome,
       lis.codlista,
       lp.codprod,
       lp.cnpjmer,
       pro.codprod
FROM listapopular.listaprod AS lp,
     listapopular.produto AS pro,
     listapopular.lista AS lis,
     listapopular.cliente AS cli
WHERE pro.cnpjmer = lp.cnpjmer
  AND lis.cpfcli = cli.cpfcli
  AND lis.cpfcli = '3448445363';

-- lista todos os produtos com valores acima de 50 reais e seus respectivos mercados.

SELECT prod.valor,
       prod.nome,
       mer.nome
FROM listapopular.produto AS prod,
     listapopular.mercado AS mer
WHERE prod.valor > 50 :: MONEY
  AND prod.cnpjmer = mer.cnpjmer ;

-- lista o pão mais barato em cada mercado ordenando-os pelo valor minimo.

SELECT MIN (prod.valor), prod.nome,
                         mer.nome
FROM listapopular.produto AS prod,
     listapopular.mercado AS mer
WHERE prod.nome like '%pao%'
  OR prod.nome like '%Pao%'
GROUP BY prod.nome,
         mer.nome
ORDER BY min(prod.valor) ASC;

-- lista os produtos mais caros de todos os mercados com valores acima de 50 reais em ordem crescente.

SELECT prod.valor,
       prod.nome,
       mer.nome
FROM listapopular.produto AS prod,
     listapopular.mercado AS mer
WHERE prod.valor > 50 :: MONEY
ORDER BY prod.valor ASC;

-- lista cada promocao na lista de compras de um usuario dado seu cpf. join + comparacao

SELECT cli.nome,
       prom.nome,
       lprom.quantia,
       lprom.codlista
FROM listapopular.promocao AS prom
JOIN listapopular.listaprom AS lprom ON lprom.codprom = prom.codprom
JOIN listapopular.cliente AS cli ON cli.cpfcli = lprom.cpfcli
WHERE cli.cpfcli = '3448445363';

-- lista os produtos que cada promocao contem, join + agregacao + comparacao

SELECT DISTINCT promo.nome,
                promo.codprom,
                prod.nome,
                promoprod.quantia
FROM listapopular.promocao AS promo
JOIN listapopular.promocaoproduto AS promoprod ON promoprod.codprom = promo.codprom
JOIN listapopular.produto AS prod ON prod.codprod = promoprod.codprod
GROUP BY promo.nome,
         promo.codprom,
         prod.nome,
         promoprod.quantia;

-- lista as promocoes por mercado, join + ordenacao + comparacao

SELECT mer.nome AS mercado,
       promo.nome AS promocoes
FROM listapopular.mercado AS mer
JOIN listapopular.promocao AS promo ON promo.cnpjmer = mer.cnpjmer
ORDER BY mer.nome;

-- lista os produtos por mercado, join + ordenacao + comparacao

SELECT mer.nome,
       prod.nome,
       prod.valor
FROM listapopular.mercado AS mer
JOIN listapopular.produto AS prod ON prod.cnpjmer = mer.cnpjmer
ORDER BY mer.nome;

-- Lista quantos produtos existem em cada mercado.

SELECT count(produto.cnpjmer),
       mer.nome
FROM listapopular.mercado AS mer,
     listapopular.produto AS produto
WHERE produto.cnpjmer = mer.cnpjmer
GROUP BY mer.nome ;

-- Valor total de uma determinada promocao

SELECT sum((promoprod.quantia::numeric * produto.valor::numeric) - promoprod.desconto::numeric) AS valortotalpromo,
       promo.nome
FROM listapopular.promocaoproduto AS promoprod,
     listapopular.produto AS produto,
     listapopular.promocao AS promo
WHERE promoprod.codprod = produto.codprod
  AND promoprod.cnpjmer = produto.cnpjmer
  AND promoprod.codprom = '4'
  AND promo.codprom = '4'
GROUP BY promo.nome ;

-- lista as carnes mais baradas em seus respectivos mercados.

SELECT min(produto.valor),
       produto.nome,
       mer.nome
FROM listapopular.produto AS produto,
     listapopular.mercado AS mer
WHERE produto.nome like '%Carne%'
GROUP BY produto.nome,
         mer.nome;
-- lista os produtos de todos os mercados pelo preço em ordem decrescente.

SELECT nome,
       valor
FROM listapopular.produto
ORDER BY valor DESC;

-- lista os pães em ordem crescente de preço.

SELECT nome,
       valor
FROM listapopular.produto
WHERE nome like '%pao%'
  OR nome like '%pao%'
ORDER BY valor ASC;

-- lista arroz em ordem crescente de preco

SELECT nome,
       valor
FROM listapopular.produto
WHERE nome like '%Arroz%'
  OR nome like '%arroz%'
ORDER BY valor ASC;

-- lista os pães mais com valor menor que 11.50 em ordem crescente.

SELECT nome,
       valor
FROM listapopular.produto
WHERE nome like '%pao%'
  OR nome like '%Pao%'
  AND valor < 11.50 :: MONEY
ORDER BY valor ASC;

-- lista todos os produtos que estão relacionados à uma lista e mostra quais são suas respectivas listas.

SELECT lis.codlista,
       lp.codprod,
       lp.cnpjmer,
       pro.codprod,
       pro.cnpjmer
FROM listapopular.listaprod AS lp,
     listapopular.produto AS pro,
     listapopular.lista AS lis
WHERE pro.cnpjmer = lp.cnpjmer;

-- lista todos os produtos da lista de um usuário dado seu cpf.

SELECT lis.cpfcli,
       cli.nome,
       lis.codlista,
       lp.codprod,
       lp.cnpjmer,
       pro.codprod,
       pro.cnpjmer
FROM listapopular.listaprod AS lp,
     listapopular.produto AS pro,
     listapopular.lista AS lis,
     listapopular.cliente AS cli
WHERE pro.cnpjmer = lp.cnpjmer
  AND lis.cpfcli = cli.cpfcli
  AND lis.cpfcli = '3448445363';

-- lista todos os produtos com valores acima de 50 reais e seus respectivos mercados.

SELECT prod.valor,
       prod.nome,
       mer.nome
FROM listapopular.produto AS prod,
     listapopular.mercado AS mer
WHERE prod.valor > 50 :: MONEY
  AND prod.cnpjmer = mer.cnpjmer ;

-- lista o pão mais barato em cada mercado ordenando-os pelo valor minimo.

SELECT MIN (prod.valor), prod.nome,
                         mer.nome
FROM listapopular.produto AS prod,
     listapopular.mercado AS mer
WHERE prod.nome like '%pao%'
  OR prod.nome like '%Pao%'
GROUP BY prod.nome,
         mer.nome
ORDER BY min(prod.valor) ASC;

-- lista os produtos mais caros de todos os mercados com valores acima de 50 reais em ordem crescente.

SELECT prod.valor,
       prod.nome,
       mer.nome
FROM listapopular.produto AS prod,
     listapopular.mercado AS mer
WHERE prod.valor > 50 :: MONEY
ORDER BY prod.valor ASC;

-- lista cada promocao na lista de compras de um usuario dado seu cpf. join + comparacao

SELECT cli.nome,
       prom.nome,
       lprom.quantia,
       lprom.codlista
FROM listapopular.promocao AS prom
JOIN listapopular.listaprom AS lprom ON lprom.codprom = prom.codprom
JOIN listapopular.cliente AS cli ON cli.cpfcli = lprom.cpfcli
WHERE cli.cpfcli = '3448445363';

-- lista os produtos que cada promocao contem, join + agregacao + comparacao

SELECT DISTINCT promo.nome,
                promo.codprom,
                prod.nome,
                promoprod.quantia
FROM listapopular.promocao AS promo
JOIN listapopular.promocaoproduto AS promoprod ON promoprod.codprom = promo.codprom
JOIN listapopular.produto AS prod ON prod.codprod = promoprod.codprod
GROUP BY promo.nome,
         promo.codprom,
         prod.nome,
         promoprod.quantia;

-- lista as promocoes por mercado, join + ordenacao + comparacao

SELECT mer.nome AS mercado,
       promo.nome AS promocoes
FROM listapopular.mercado AS mer
JOIN listapopular.promocao AS promo ON promo.cnpjmer = mer.cnpjmer
ORDER BY mer.nome;

-- lista os produtos por mercado, join + ordenacao + comparacao

SELECT mer.nome,
       prod.nome,
       prod.valor
FROM listapopular.mercado AS mer
JOIN listapopular.produto AS prod ON prod.cnpjmer = mer.cnpjmer
ORDER BY mer.nome;

-- Lista quantos produtos existem em cada mercado.

SELECT count(produto.cnpjmer),
       mer.nome
FROM listapopular.mercado AS mer,
     listapopular.produto AS produto
WHERE produto.cnpjmer = mer.cnpjmer
GROUP BY mer.nome ;

-- Valor total de uma determinada promocao

SELECT sum((promoprod.quantia::numeric * produto.valor::numeric) - promoprod.desconto::numeric) AS valortotalpromo,
       promo.nome
FROM listapopular.promocaoproduto AS promoprod,
     listapopular.produto AS produto,
     listapopular.promocao AS promo
WHERE promoprod.codprod = produto.codprod
  AND promoprod.cnpjmer = produto.cnpjmer
  AND promoprod.codprom = '4'
  AND promo.codprom = '4'
GROUP BY promo.nome ;

-- lista as carnes mais baradas em seus respectivos mercados.

SELECT min(produto.valor),
       produto.nome,
       mer.nome
FROM listapopular.produto AS produto,
     listapopular.mercado AS mer
WHERE produto.nome like '%Carne%'
GROUP BY produto.nome,
         mer.nome;

-- Conta quantos produtos diferentes tem disponiveis no aplicativo.

SELECT count(prod.valor)
FROM listapopular.produto AS prod;

-- lista os mercados disponiveis

SELECT merc.nome
FROM listapopular.mercado AS merc;

-- Lista o horario de saida das entregas

SELECT ent.cpfcli,
       ent.codentrega,
       ent.hrsaida
FROM listapopular.entrega AS ent;

-- Lista os supermercados em que uma dada entrega foi coletar.

SELECT cont.codentrega,
       mer.nome
FROM listapopular.contrato AS cont,
     listapopular.mercado AS mer
WHERE cont.cnpjmer = mer.cnpjmer
  AND cont.codentrega = '2';
-- Conta quantos produtos diferentes tem disponiveis no aplicativo.

SELECT count(prod.valor)
FROM listapopular.produto AS prod;

-- lista os mercados disponiveis

SELECT merc.nome
FROM listapopular.mercado AS merc;

-- Lista o horario de saida das entregas

SELECT ent.cpfcli,
       ent.codentrega,
       ent.hrsaida
FROM listapopular.entrega AS ent;

-- Lista os supermercados em que uma dada entrega foi coletar.

SELECT cont.codentrega,
       mer.nome
FROM listapopular.contrato AS cont,
     listapopular.mercado AS mer
WHERE cont.cnpjmer = mer.cnpjmer
  AND cont.codentrega = '2';
