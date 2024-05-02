select vendas.produto_id, vendas.venda_id, produtos.nome,
(quantidade * preco) TOTAL from vendas 
inner join PRODUTOS 
on vendas.produto_id = produtos.produto_id;

-- sum => agregadora de soma
select sum(quantidade * preco) TOTAL from vendas 
inner join PRODUTOS 
on vendas.produto_id = produtos.produto_id;


select max(quantidade * preco) TOTAL from vendas 
inner join PRODUTOS 
on vendas.produto_id = produtos.produto_id;

select min(quantidade * preco) TOTAL from vendas 
inner join PRODUTOS 
on vendas.produto_id = produtos.produto_id;

select avg(quantidade * preco) TOTAL from vendas 
inner join PRODUTOS 
on vendas.produto_id = produtos.produto_id;


select 
	produtos.produto_id ,
	produtos.nome,
	sum(quantidade) "Qtd. produtos vendidos",
	avg(quantidade * preco) Media,
	min(quantidade * preco) "Menor Venda",
	max(quantidade * preco) "Maior Venda",
	sum(quantidade * preco) "Soma das Vendas",
	count(*)
from vendas 
inner join PRODUTOS 
on vendas.produto_id = produtos.produto_id
group by produtos.produto_id,  produtos.nome;

select * from produtos;
select * from vendas;

