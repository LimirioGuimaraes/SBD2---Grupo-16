# 📊 Data Engineering Pipeline: Uber Ride Analytics

### 📝 Introdução

Este repositório tem por objetivo demonstrar um **fluxo completo de Engenharia de Dados**, desde a ingestão de um *dataset* bruto até a análise final em um *dashboard* de **Business Intelligence (BI)**.

O projeto utiliza o *dataset* **[Uber Ride Analytics Dashboard](https://www.kaggle.com/datasets/yashdevladdha/uber-ride-analytics-dashboard)**, disponível no Kaggle, como fonte de dados. Este conjunto de dados oferece uma visão detalhada das operações de *ride-sharing*, incluindo **Detalhes da Viagem**, **Métricas de Desempenho**, **Resultados Operacionais** e  **Qualidade do Serviço**.

A partir deste *dataset*, são aplicadas etapas de **transformação e modelagem**. O *pipeline* segue a arquitetura de um **Lakehouse**, onde os dados são inicialmente armazenados e processados, evoluindo posteriormente para a estrutura de um **Data Warehouse (DW)**.

Por fim, os dados tratados e consolidados são utilizados em uma camada de **BI**, permitindo a criação de visualizações e análises gerenciais.


### 🚀 Como Rodar

Para executar o projeto localmente, é necessário ter o **Docker** e o **Docker Compose** instalados em sua máquina.

### 1. Iniciar os Serviços

Para subir o serviço de **banco de dados** e a interface do **pgAdmin**, execute o comando na raiz do repositório:

```bash
docker-compose up
````

O arquivo `docker-compose.yml` inclui também um contêiner chamado **etl**.
Esse contêiner é responsável por executar o *notebook* `etl_pipeline.ipynb`, que:

1. Lê o *dataset* da Uber;
2. Aplica as transformações necessárias (camada *Lakehouse*);
3. Realiza a carga dos dados no PostgreSQL.

O contêiner **etl** é projetado para ser um *job* único.
Após o processamento e o carregamento bem-sucedidos dos dados, ele encerrará sua execução, deixando apenas o **PostgreSQL** e o **pgAdmin** em execução em segundo plano.

---

### 2. Acessar o Banco de Dados

Você pode interagir com o banco de dados de duas maneiras:

#### A. Via Terminal 

Para acessar o *shell* do PostgreSQL diretamente, use:

```bash
docker exec -it postgres psql -U admin -d postgres
```

#### B. Via Interface Gráfica (pgAdmin)

O Docker também inicia um serviço **pgAdmin**, acessível em:

```
http://localhost:8080/
```

Use as seguintes credenciais para login:

| Parâmetro  | Valor             |
| :--------- | :---------------- |
| **E-mail** | `admin@admin.com` |
| **Senha**  | `admin`           |

Após o login, conecte o servidor PostgreSQL ao pgAdmin com os seguintes parâmetros:

| Parâmetro     | Valor      |
| :------------ | :--------- |
| **Host name** | `postgres` |
| **Port**      | `5432`     |
| **Username**  | `admin`    |
| **Password**  | `admin`    |
| **Database**  | `postgres` |

---

### 3. Verificar dados tranformados (Lakehouhe)

O job `ETL` do `docker-compose` cria uma tabela chamada `uber_silver`.
Você pode visualizá-la no pgAdmin navegando pelo menu lateral:

```
Servers → nome_da_sua_conexão → Databases → postgres  → Schemas → public → Tables → uber_silver
```

Para ver o conteúdo, clique com o botão direito na tabela `users` → **View/Edit Data** → **All Rows**.


