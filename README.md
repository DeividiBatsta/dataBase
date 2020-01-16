#DataBase
##  Referente ao teste
##Descrição da Modelagem
1. Ranking de produtos mais vendidos por período.
    a. Filtros: Data inicial(obrigatório) e data final(obrigatório);
    b. Retorno: Lista contendo: nome do produto, quantidade de vendas, valor total das vendas;
    c. Observações: deverá ser possível ordenar os resultados por quantidade de vendas;
2. Lista de produtos vendidos por período.
  a. Filtros: Data inicial(obrigatório) e data final(obrigatório);
  b. Retorno: Lista contendo: nome do produto, data da venda, valor do produto;
  c. Observações: deverá ser possível ordenar os resultados por nome do produto e data da venda. Não deverão aparecer produtos sem venda.
3. Ranking de vendas por mês.
  a. Filtros: ano (não obrigatório).
  b. Retorno: Lista contendo: nome do mês, quantidade de vendas, valor total de vendas
  c. Observações: deverá ser possível ordenar os resultados por nome do produto e data da venda. Nos meses sem vendas de anos que possuem      vendas, os valores deverão vir zerados.
4. Estoque inicial dos produtos.
  a. Filtros: ano (não obrigatório).
  b. Retorno: Lista contendo: nome do produto, estoque inicial.
  c. Observações: Considerando o estoque atual dos produtos, e as vendas
     efetuadas, a API deve retornar o estoque inicial dos produtos.
5. Ranking de clientes.
    a. Filtros: CNPJ do cliente (não obrigatório).
    b. Retorno: Lista contendo: nome do cliente, produtos que o cliente comprou
    [nome do produto, valor do produto], quantidade total de produtos comprados,
    valor total de produtos comprados.
    c. Observações: deverá ser possível ordenar os resultados por nome do cliente,
    valor total de produtos e quantidade total de produtos. O nome do cliente
    deverá ser recuperado pelo CNPJ utilizando a seguinte API:
    https://www.receitaws.com.br/v1/cnpj/{cnpj}
    *considerar o nome fantasia, se não houver, a razão social.
