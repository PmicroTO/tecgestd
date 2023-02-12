-- lista os produtos de todos os mercados pelo preço em ordem decrescente.
select 
  nome, valor 
from 
  listapopular.produto 
order by 
  valor desc;
 
-- lista os pães em ordem crescente de preço.
select 
  nome, 
  valor 
from 
  listapopular.produto 
where 
  nome like '%pao%' 
  or nome like '%pao%' 
order by 
  valor asc;
 
-- lista os pães mais com valor menor que 11.50 em ordem crescente.
select 
  nome, 
  valor 
from 
  listapopular.produto 
where 
  nome like '%pao%' 
  or nome like '%pao%' 
  and valor < 11.50 :: money 
order by 
  valor asc;
 
-- lista todos os produtos que estão relacionados à uma lista e mostra quais são suas respectivas listas.
select 
  lis.codlista, 
  lp.codprod, 
  lp.cnpjmer, 
  pro.codprod, 
  pro.cnpjmer 
from 
  listapopular.listaprod as lp, 
  listapopular.produto as pro, 
  listapopular.lista as lis 
where 
  pro.cnpjmer = lp.cnpjmer;
 
-- lista todos os produtos da lista de um usuário dado seu cpf.
select 
  lis.cpfcli, 
  cli.nome, 
  lis.codlista, 
  lp.codprod, 
  lp.cnpjmer, 
  pro.codprod, 
  pro.cnpjmer 
from 
  listapopular.listaprod as lp, 
  listapopular.produto as pro, 
  listapopular.lista as lis, 
  listapopular.cliente as cli 
where 
  pro.cnpjmer = lp.cnpjmer 
  and lis.cpfcli = cli.cpfcli 
  and lis.cpfcli = '3448445363';
 
-- lista todos os produtos com valores acima de 50 reais e seus respectivos mercados.
select 
  prod.valor, 
  prod.nome,
  mer.nome 
from 
  listapopular.produto as prod,
  listapopular.mercado as mer
where 
  prod.valor > 50 :: money and
	prod.cnpjmer = mer.cnpjmer ; 
-- lista o pão mais barato em cada mercado ordenando-os pelo valor minimo. 
select 
  min (prod.valor), 
  prod.nome, 
  mer.nome 
from 
  listapopular.produto as prod, 
  listapopular.mercado as mer 
where 
  prod.nome like '%pao%'
  or prod.nome like '%Pao%'
group by 
  prod.nome, 
  mer.nome 
order by 
  min(prod.valor) asc;
 
  
-- lista os produtos mais caros de todos os mercados com valores acima de 50 reais em ordem crescente.
select 
  prod.valor, 
  prod.nome, 
  mer.nome 
from 
  listapopular.produto as prod, 
  listapopular.mercado as mer 
where 
  prod.valor > 50 :: money 
order by 
  prod.valor asc;
 

-- lista cada produto avulço na lista de compras de um usuario dado seu cpf. join + ordenacao
select 
  distinct cli.nome, 
  prod.nome, 
  prod.valor, 
  lpro.quantia 
from 
  listapopular.cliente as cli 
  join listapopular.listaprod as lpro on lpro.cpfcli = cli.cpfcli 
  join listapopular.produto as prod on prod.cnpjmer = lpro.cnpjmer 
where 
  cli.cpfcli = 48782206007 
order by 
  valor desc;

 -- soma de cada lista do cliente
 
 select 
  cli.nome, 
  lpro.codlista,
  sum(prod.valor * lpro.quantia) as total
from 
  listapopular.cliente as cli 
  join listapopular.listaprod as lpro on lpro.cpfcli = cli.cpfcli 
  join listapopular.produto as prod on prod.cnpjmer = lpro.cnpjmer 
where 
  cli.cpfcli = 48782206007 
 group by cli.nome, lpro.codlista
 
 
 
 
 
-- lista cada promocao na lista de compras de um usuario dado seu cpf. join + comparacao
select 
  cli.nome, 
  prom.nome, 
  lprom.quantia, 
  lprom.codlista 
from 
  listapopular.promocao as prom 
  join listapopular.listaprom as lprom on lprom.codprom = prom.codprom 
  join listapopular.cliente as cli on cli.cpfcli = lprom.cpfcli 
where 
  cli.cpfcli = '3448445363';
 
-- lista os produtos que cada promocao contem, join + agregacao + comparacao
select 
  distinct promo.nome, 
  promo.codprom, 
  prod.nome, 
  promoprod.quantia 
from 
  listapopular.promocao as promo 
  join listapopular.promocaoproduto as promoprod on promoprod.codprom = promo.codprom 
  join listapopular.produto as prod on prod.codprod = promoprod.codprod 
group by 
  promo.nome, 
  promo.codprom, 
  prod.nome, 
  promoprod.quantia;
 
-- lista as promocoes por mercado, join + ordenacao + comparacao 
select 
  mer.nome as mercado, 
  promo.nome as promocoes 
from 
  listapopular.mercado as mer 
  join listapopular.promocao as promo on promo.cnpjmer = mer.cnpjmer 
order by 
  mer.nome;
 
-- lista os produtos por mercado, join + ordenacao + comparacao
select 
  mer.nome, 
  prod.nome, 
  prod.valor 
from 
  listapopular.mercado as mer 
  join listapopular.produto as prod on prod.cnpjmer = mer.cnpjmer 
order by 
  mer.nome;
 
-- Lista quantos produtos existem em cada mercado.
 
 select count(produto.cnpjmer), mer.nome
 from listapopular.mercado as mer, listapopular.produto as produto
 where produto.cnpjmer = mer.cnpjmer 
group by mer.nome ;

 
-- Valor total de uma determinada promocao
 
select sum((promoprod.quantia::numeric * produto.valor::numeric) - promoprod.desconto::numeric) as valortotalpromo, promo.nome 
from listapopular.promocaoproduto as promoprod, listapopular.produto as produto, listapopular.promocao as promo
where promoprod.codprod = produto.codprod and promoprod.cnpjmer = produto.cnpjmer and promoprod.codprom = '4' and promo.codprom  = '4'
group by promo.nome ;

 
-- aggr




-- aggr
