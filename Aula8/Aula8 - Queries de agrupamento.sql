select vendas.PRODUTOID, vendas.vendaid, produtos.nome,
(quantidade * preco) TOTAL from vendas 
inner join PRODUTOS 
on vendas.produtoid = produtos.produtoid;

-- sum => agregadora de soma
select sum(quantidade * preco) TOTAL from vendas 
inner join PRODUTOS 
on vendas.produtoid = produtos.produtoid;


select SUM(cast(preco as numeric)) from shows;

select show_id, cast(preco as numeric) from shows
where cast(preco as numeric) > 40;

select * from shows;
alter table shows add column data_hora varchar(100); 
update shows set data_hora=data; 

select * from shows where cast(data_hora as DATE) between '2024-07-10' and '2024-07-15';


select max(quantidade * preco) TOTAL from vendas 
inner join PRODUTOS 
on vendas.produtoid = produtos.produtoid;

select min(quantidade * preco) TOTAL from vendas 
inner join PRODUTOS 
on vendas.produtoid = produtos.produtoid;

select avg(quantidade * preco) TOTAL from vendas 
inner join PRODUTOS 
on vendas.produtoid = produtos.produtoid;


create or replace view relatorio_produtos as
select 
	string_agg(produtos.nome, '|') as "Produtos Agregados",
	sum(quantidade) "Qtd. produtos vendidos",
	avg(quantidade * preco) Media,
	min(quantidade * preco) "Menor Venda",
	max(quantidade * preco) "Maior Venda",
	sum(quantidade * preco) "Soma das Vendas",
	count(*)
from vendas 
inner join PRODUTOS 
on vendas.produtoid = produtos.produtoid;

select * from relatorio_produtos;

select * from produtos;
select * from vendas;

-- para curiosidade
select regexp_matches(nome,'Bon.*','g') as palavras
from produtos; 

select 



select substring('Hello World', 1, 5) as split;
\w+, \d+

select regexp_matches('Richard, 25','\w+, \d+','g') as palavras; 



select 
	produtos.nome,
	sum(quantidade) "Qtd. produtos vendidos",
	avg(quantidade * preco) Media,
	min(quantidade * preco) "Menor Venda",
	max(quantidade * preco) "Maior Venda",
	sum(quantidade * preco) "Soma das Vendas",
	count(*)
from vendas 
inner join PRODUTOS 
on vendas.produtoid = produtos.produtoid
where 1=1
group by produtos.nome having count(*) > 1;



