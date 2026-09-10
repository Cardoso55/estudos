# O que é Banco de dados (BD)?

É um sistema estrututado para armazenar, organizar e gerenciar informações em um computador de forma eletrônica.

# Para que serve?

- **Armazenar** grandes volumes de dados de forma segura.
- **Consultar** e recuperar informações rapidamente.
- **Atualizar** e modificar registros quando necessário.
- **Proteger** dados contra perdas ou acessos não autorizados.

# Bancos Relacionais (SQL): 
Armazenam dados em formato de tabelas com linhas e colunas, parecidas com planilhas, mas muito mais potentes. Exemplo: MySQL, PostgreSQL.

## Colunas:
Atributo/Campo, é a categoria ou o tipo de informação que será guardada. Ela define o que cada registro deve conter.
- Exemplos: `ID, nome, email, dataNascimento.`

## Linhas:
Registro/Tupla, é um item único e completo da tabela. É o conjunto de dados de uma pessoa, produto ou evento específico.
- Exemplos: 1, João Silva, joao@email.com, 15/03/1990

## Relações entre tabelas:

### PK (Primary Key):

A PK é o RG da linha. Ela é uma coluna (ou conjunto de colunas) que serve para identificar de forma única cada registro de uma tabela.

- Nunca pode ser repetida e nunca pode ficar em branco (nula)
- **Exemplo:** Na tabela Clientes, a coluna `id_cliente` é a PK. Pode haver dois "João Silva", mas um será o `id_cliente = 1` e o outro `id_cliente = 2`

### FK (Foreing Key)
A FK é o gancho que une uma tabela à outra. Ela é uma coluna que **copia a PK de outra tabela** para criar um vínculo entre elas.

- Ela serve para garantir a "integridade" dos dados. Você não pode criar um vínculo com algo que não existe.
- **Exemplo:** Se o cliente `id_cliente = 1 ` fizer uma compra, a tabela Pedidos terá uma coluna chamada `id_cliente_fk = 1`

### Relações mais comuns:
- **1 para 1 (1:1)** : Uma linha da Tabela A se conecta a apenas uma linha da Tabela B. (Exemplo: Um Usuário tem apenas um Perfil de Acesso).

- **1 para Muitos (1:N)**: Uma linha da Tabela A pode se conectar a várias linhas da Tabela B. (É o exemplo acima: Um Cliente pode fazer vários Pedidos, mas cada pedido pertence a apenas um cliente).

- **Muitos para Muitos (N:N)**: Várias linhas da Tabela A se conectam a várias da Tabela B. (Exemplo: Um Pedido pode ter vários Produtos, e um Produto pode estar em vários Pedidos. Esse caso exige uma terceira tabela intermediária para organizar a bagunça).

# Bancos Não Relacionais (NoSQL):
Usam formatos flexíveis, como documentos (JSON), para grandes volumes de dados dinâmicos. Exemplo: MongoDB.

