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

-- Consultas com JUNÇÃO

-- Lista cada produto avulço na lista de compras de um usuario dado seu cpf.
/*select cli.nome, listapopular.produto.nome, listapopular.produto.valor, listprod.quantia 
	from listapopular.cliente as cli
		join listapopular.lista as lis 
			on lis.cpfcli=cli.cpfcli
		join listapopular.listaprod as listprod 
			on listprod.cpfcli=cli.cpfcli
		join listapopular.produto 
			on listapopular.produto.codprod=listprod.codprod
	where cli.cpfcli = 48782206007;*/

-- Lista cada promocao na lista de compras de um usuario dado seu cpf.
/*select prom.nome, cli.nome, lprom.codlista  
	from listapopular.promocao as prom
		join listapopular.listaprom as lprom
			on lprom.codprom=prom.codprom 
		join listapopular.cliente as cli
			on cli.cpfcli=lprom.cpfcli
	where cli.cpfcli = '3448445363';*/



	
	


