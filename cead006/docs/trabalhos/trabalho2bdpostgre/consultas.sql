-- lista os produtos de todos os mercados pelo preço em ordem decrescente.
-- select nome from listapopular.produto order by valor desc;

-- lista os Pães em ordem crescente de preço.
-- select nome, valor from listapopular.produto where nome like '%pao%' or nome like '%Pao%'  order by valor asc;

-- lista os Pães mais com valor menor que 11.50 em ordem crescente.
-- select nome, valor from listapopular.produto where nome like '%pao%' or nome like '%Pao%' and valor < 11.50::money order by valor asc;

-- lista todos os produtos que estão relacionados à uma lista e mostra quais são suas respectivas listas.
/* select lis.codlista, lp.codprod, lp.cnpjmer, pro.codprod, pro.cnpjmer from listapopular.listaprod as lp, listapopular.produto as pro, listapopular.lista as lis
 where pro.cnpjmer = lp.cnpjmer ;*/

-- lista todos os produtos da lista de um usuário dado seu CPF.
/*select lis.cpfcli, cli.nome, lis.codlista, lp.codprod, lp.cnpjmer, pro.codprod, pro.cnpjmer from listapopular.listaprod as lp, listapopular.produto as pro, listapopular.lista as lis, listapopular.cliente as cli
where pro.cnpjmer = lp.cnpjmer and lis.cpfcli = cli.cpfcli and lis.cpfcli = '3448445363' ;*/

-- lista produtos com valores acima de 50 reais
/*select prod.valor, prod.nome from listapopular.produto as prod
where prod.valor > 50::money;*/

-- lista o Pão mais barato em cada mercado ordenando-os pelo valor minimo. 
/*select MIN (prod.valor), prod.nome, mer.nome  from listapopular.produto as prod, listapopular.mercado as mer
where prod.nome like '%pao%' or prod.nome like '%Pao%'
group by prod.nome, mer.nome
order by min(prod.valor) asc;*/

-- Lista os produtos mais caros de todos os mercados com valores acima de 50 reais em ordem crescente.
/*select prod.valor, prod.nome, mer.nome  from listapopular.produto as prod, listapopular.mercado as mer
where prod.valor > 50::money
order by prod.valor asc;*/

-- Consultas com JOIN

-- Lista cada produto avulço na lista de compras de um usuario dado seu cpf. JOIN + Ordenacao
/*
select distinct cli.nome, prod.nome, prod.valor, lpro.quantia
	from listapopular.cliente as cli
		join listapopular.listaprod as lpro
			on lpro.cpfcli = cli.cpfcli 
		join listapopular.produto as prod
			on prod.cnpjmer = lpro.cnpjmer 
	where cli.cpfcli = 48782206007
	order by valor desc;*/


/*-- Lista cada promocao na lista de compras de um usuario dado seu cpf. JOIN + Comparacao
select cli.nome, prom.nome,lprom.quantia, lprom.codlista  
	from listapopular.promocao as prom
		join listapopular.listaprom as lprom
			on lprom.codprom=prom.codprom 
		join listapopular.cliente as cli
			on cli.cpfcli=lprom.cpfcli
	where cli.cpfcli = '3448445363'; */

/*
-- lista os produtos que cada promocao contem
select distinct promo.nome, promo.codprom , prod.nome, promoprod.quantia 
	from listapopular.promocao as promo
		join listapopular.promocaoproduto as promoprod
			on promoprod.codprom = promo.codprom 
		join listapopular.produto as prod
			on prod.codprod=promoprod.codprod
		group by promo.nome, promo.codprom , prod.nome, promoprod.quantia;
	
-- Lista as promocoes de cada mercado
select mer.nome as mercado, promo.nome as promocoes
	from listapopular.mercado as mer
		join listapopular.promocao as promo
			on promo.cnpjmer = mer.cnpjmer 
	order by mer.nome;

-- Lista os produtos por mercado
select mer.nome, prod.nome, prod.valor 
	from listapopular.mercado as mer
		join listapopular.produto as prod 
			on prod.cnpjmer = mer.cnpjmer 
	order by mer.nome;


*/
