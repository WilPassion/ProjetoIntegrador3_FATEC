                                    AVALIAÇÃO DOS RESULTADOS - VISUALIZAÇÃO DE DADOS (DATAVIZ)
--------------------------------

### Template do Projeto
O arquivo [relatorios_vs3.0.pbit](https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/dataviz/relatorios_vs3.0.pbit) inserido no projeto é um modelo de relatório do Power BI.

* PBIT significa Power BI Template.
  
* Esse tipo de arquivo é um modelo de relatório que inclui todos os elementos visuais, consultas e layouts do relatório, mas não contém dados.
  
* Ele é usado para criar novos relatórios no Power BI com a mesma estrutura e visualização, onde o usuário pode apenas importar ou conectar novos dados para preencher o relatório.

Isso significa que ele foi projetado para ser reutilizado com diferentes dados ou atualizado conforme necessário, mantendo os visuais e estrutura originais.

Para reutilizá-lo, basta abrir o arquivo no Power BI Desktop, adicionar os dados relevantes, e o relatório será gerado com base nas configurações definidas no modelo. Abaixo está definido a modelagem (star-scheme) final do projeto, bem como os relacionamentos entre as tabelas, para melhor entendimento da conexão dos dados:

<img align="center" src="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/modelagem-DW/modelagem_powerbi_etl.PNG" alt="modelagem_powerbi_etl.PNG" width="1300">

--------------------------------

### Tabela de Medidas

<table>
  <thead>
    <tr>
      <th>Medida</th>
      <th>Objetivo</th>
      <th>Análise</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/%25%20credit%20card.dax">% credit card</a></td>
      <td>Calcular a porcentagem das transações de pagamento em cartão de crédito</td>
      <td>Financial</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/%25%20Dinheiro.dax">% Dinheiro</a></td>
      <td>Calcular a porcentagem das transações de pagamento em dinheiro</td>
      <td>Financial</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/%25%20PIX.dax">% PIX</a></td>
      <td>Calcular a porcentagem das transações de pagamento em PIX</td>
      <td>Financial</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Cash%20Transactions.dax">Cash Transactions</a></td>
      <td>Contar quantidade das transações de pagamento em dinheiro</td>
      <td>Financial</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Credit%20Card%20Transactions.dax">Credit Card Transactions</a></td>
      <td>Contar quantidade dos pagamentos das transações de pagamento em cartão de crédito</td>
      <td>Financial</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Gross%20Revenue.dax">Gross Revenue</a></td>
      <td>Soma o total das vendas para cálculo da renda bruta</td>
      <td>Financial</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Issued%20Invoices.dax">Issued Invoices</a></td>
      <td>Contar a quantidade de notas fiscais emitidas no período</td>
      <td>Financial</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Net%20Margin.dax">Net Margin</a></td>
      <td>Calcular a margem líquida</td>
      <td>Financial</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Net%20Margin%20Diff.dax">Net Margin Diff</a></td>
      <td>Calcular a diferença da margem líquida atingida no gráfico de rosca em relação ao resultado total</td>
      <td>Financial</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/PIX%20Transactions.dax">PIX Transactions</a></td>
      <td>Contar quantidade das transações de pagamento em PIX</td>
      <td>Financial</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Profit.dax">Profit</a></td>
      <td>Calcular o lucro líquido</td>
      <td>Financial</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Revenue.dax">Revenue</a></td>
      <td>Calcular a margem líquida da empresa</td>
      <td>Financial</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Target%20Deviation.dax">Target Deviation</a></td>
      <td>Calcular o desvio da margem líquida alvo (90% de meta - fictício)</td>
      <td>Financial</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Tax.dax">Tax</a></td>
      <td>Calcular o total de impostos (5% sobre cada venda - fictício)</td>
      <td>Financial</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Address%20Not%20Found%20%25.dax">Address Not Found %</a></td>
      <td>Contar quantidade das entregas com status - "Endereço não encontrado"</td>
      <td>Log</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Address%20Not%20Found.dax">Address Not Found</a></td>
      <td>Calcular a porcentagem das entregas com status - "Entregue, mas não recebido"</td>
      <td>Log</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Delivered%20But%20Not%20Received%20%25.dax">Delivered But Not Received %</a></td>
      <td>Contar quantidade das entregas com status - "Entregue, mas não recebido"</td>
      <td>Log</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Delivered.dax">Delivered</a></td>
      <td>Contar quantidade das entregas com status - "Entregue"</td>
      <td>Log</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Delivered-Status%20Not%20Updated.dax">Delivered-Status Not Updated</a></td>
      <td>Calcular a porcentagem das entregas com status - "Entregue, mas status não atualizado"</td>
      <td>Log</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Delivered-Status%20Not%20Updated%20%25.dax">Delivered-Status Not Updated %</a></td>
      <td>Contar quantidade das entregas com status - "Entregue, mas status não atualizado"</td>
      <td>Log</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Lost%20Orders.dax">Lost Orders</a></td>
      <td>Contar quantidade das entregas com status - "Pacote Perdidos"</td>
      <td>Log</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Lost%20Orders%20%25.dax">Lost Orders %</a></td>
      <td>Calcular a porcentagem das entregas com status - "Pacote Perdidos"</td>
      <td>Log</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Not%20Delivered.dax">Not Delivered</a></td>
      <td>Contar quantidade das entregas com status - "Pacote não entregues"</td>
      <td>Log</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Not%20Delivered%20%25.dax">Not Delivered %</a></td>
      <td>Calcular a porcentagem das entregas com status - "Pacote não entregues"</td>
      <td>Log</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/On-Time%20Delivery%20Rate.dax">On-Time Delivery Rate</a></td>
      <td>Calcular a taxa dos pacotes entregues dentro do prazo</td>
      <td>Log</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Parcel%20Returned.dax">Parcel Returned</a></td>
      <td>Contar quantidade das entregas com status - "Pacote retornou"</td>
      <td>Log</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Parcel%20Returned%20%25.dax">Parcel Returned %</a></td>
      <td>Calcular a porcentagem das entregas com status - "Pacote retornou"</td>
      <td>Log</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Shipments.dax">Shipments</a></td>
      <td>Contar a quantidade de envios</td>
      <td>Log</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Active%20Employees.dax">Active Employees</a></td>
      <td>Contar quantidade de funcionários ativos</td>
      <td>People</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Dismissals.dax">Dismissals</a></td>
      <td>Contar quantidade de demissões</td>
      <td>People</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Hirings.dax">Hirings</a></td>
      <td>Contar quantidade de contratações</td>
      <td>People</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Turnover.dax">Turnover</a></td>
      <td>Calcular a rotatividade de funcionários</td>
      <td>People</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Sales%20Ranking.dax">Sales Ranking</a></td>
      <td>Rankiar os vendedores</td>
      <td>Sales</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Top%201.dax">Top 1</a></td>
      <td>Calcular o vendedor da 1º posição do ranking</td>
      <td>Sales</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Top%201%20Photo.dax">Top 1 Photo</a></td>
      <td>Chamar a imagem do vendedor da 1º posição do ranking</td>
      <td>Sales</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Top%201%20Seller.dax">Top 1 Seller</a></td>
      <td>Chamar o vendedor da 1º posição do ranking</td>
      <td>Sales</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Top%202.dax">Top 2</a></td>
      <td>Calcular o vendedor da 2º posição do ranking</td>
      <td>Sales</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Top%202%20Photo.dax">Top 2 Photo</a></td>
      <td>Chamar a imagem do vendedor da 2º posição do ranking</td>
      <td>Sales</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Top%202%20Sellers.dax">Top 2 Seller</a></td>
      <td>Chamar o vendedor da 2º posição do ranking</td>
      <td>Sales</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Top%203.dax">Top 3</a></td>
      <td>Calcular o vendedor da 3º posição do ranking</td>
      <td>Sales</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Top%203%20Photo.dax">Top 3 Photo</a></td>
      <td>Chamar a imagem do vendedor da 3º posição do ranking</td>
      <td>Sales</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Top%203%20Sellers.dax">Top 3 Seller</a></td>
      <td>Chamar o vendedor da 3º posição do ranking</td>
      <td>Sales</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Total%20Comission.dax">Total Comission</a></td>
      <td>Calcular o comissionamento
      <td>Sales</td>
    </tr>
    <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Total%20Sales%20R%24.dax">Total Sales R$</a></td>
      <td>Calcular o total das vendas</td>
      <td>Sales</td>      
    </tr>
        <tr>
      <td><a href="https://github.com/WilPassion/ProjetoIntegrador3_FATEC/blob/main/dataviz-dashboards/DAX/Transactions%20Amount.dax">Transactions Amount</a></td>
      <td>Contar o total vendas</td>
      <td>Sales</td>
    </tr>
  </tbody>
</table>

--------------------------------
### Métricas Dashboards

🛢️ Fonte dos Dados: Azure Postgres Flexible Server
--------------------------------
> **FINANCEIRO**
> 
> 🧐 Análises realizadas:
> - Desvio da Margem-Alvo
> - Receita
> - Faturas Emitidas
> - Impostos
> - Lucro
> - Total de Transações via PIX, Dinheiro e Cartão de Crédito
> - Margem Líquida
> - Lucro por Mês
> 
> 🍰 Filtros aplicados:
> - Ícones das Lojas
> - Ano
> - Mês
--------------------------------
> **PEOPLE**
> 
> 🧐 Análises realizadas:
> - Contratações
> - Funcionários Ativos
> - Demissões
> - Turnover
> - Funcionários Ativos por Loja
> - Funcionários Ativos por Gênero
> - Funcionários Ativos por Cargo
> 
> 🍰 Filtros aplicados:
> - Times
>   
> 🛠 Mini-Dashboard Embutido ao gráftico "Funcionários Ativos por Loja":
> - Funcionários Ativos, Folha de Pagamento e Pagamento de Horas Extras por Cargo
--------------------------------
> **LOGÍSTICA**
> 
> 🧐 Análises realizadas:
> - Remessas (Envios)
> - Entregas Realizadas
> - Taxa de Entregas no Prazo
> - Percentual de Entregas Não Realizadas
> - Remessas por Centro de Distribuição
> - Entregas Não Realizadas por Motivo
> - Entregas Realizadas e Não Realizadas por Mês
> 
> 🍰 Filtros aplicados:
> - Ícones das Transportadoras
> - Ano
> - Mês
>   
> 🛠 Mini-Dashboard Embutido ao gráfico "Remessas por Centro de Distribuição":
> - Remessas por Transportadora
--------------------------------
> **RANKING VENDAS**
> 
> 🧐 Análises realizadas: 
> - Total de Vendas
> - Total de Comissões
> - Ranking dos 3 Melhores Vendedores
> - Tabela de Ranking Geral
> 
> 🍰 Filtros aplicados:
> - Ano
> - Mês
