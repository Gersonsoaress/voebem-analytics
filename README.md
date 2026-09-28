# ✈️ Voebem Analytics — Pipeline de Dados de Aviação Brasileira

Projeto de engenharia e análise de dados desenvolvido no **Databricks**, baseado em uma **Imersão de Databricks da Alura**.

A partir dos conceitos e práticas apresentados durante a imersão, o projeto foi desenvolvido e organizado como projeto de portfólio, aplicando **Arquitetura Medalhão (Bronze, Silver e Gold)**, processamento com **PySpark e SQL**, qualidade de dados, governança e preparação dos dados para análise.

> 📚 **Origem do projeto:** este projeto foi desenvolvido com base em uma Imersão da **Alura**, sendo utilizado como experiência prática para aprofundamento em Databricks e construção de pipelines de dados.

---

## 🎯 Objetivo

Aplicar na prática os conhecimentos adquiridos durante a imersão, construindo um pipeline de dados de aviação brasileira capaz de transformar dados brutos em informações estruturadas e confiáveis para análise.

O projeto trabalha conceitos utilizados em ambientes modernos de dados:

- Ingestão e processamento de dados
- Arquitetura Medalhão
- Transformações com PySpark
- SQL
- Qualidade de dados
- Auditoria e quarentena de registros
- Modelagem analítica
- Governança de dados
- Preparação de dados para Business Intelligence

---

## 🏗️ Arquitetura Medalhão

O projeto utiliza a arquitetura de dados dividida em três camadas:

### 🥉 Bronze

Camada responsável pela ingestão e armazenamento inicial dos dados.

Nesta etapa, os dados são carregados preservando sua estrutura original, permitindo rastreabilidade e reprocessamento.

Principais processos:

- Ingestão dos dados de voos
- Leitura de arquivos CSV
- Padronização inicial
- Carga das tabelas Bronze
- Ingestão de dados de referência

### 🥈 Silver

Camada responsável pela limpeza, padronização e aplicação das regras de qualidade.

Nesta etapa são tratados registros inconsistentes e aplicadas validações para garantir maior confiabilidade dos dados antes de avançarem para a camada analítica.

O fluxo também contempla:

- Validação dos registros
- Auditoria de qualidade
- Identificação de registros aprovados e reprovados
- Quarentena de registros inconsistentes

### 🥇 Gold

Camada destinada ao consumo analítico.

Os dados tratados são organizados em estruturas adequadas para análise e Business Intelligence.

O projeto contém estruturas como:

- Dimensão de aeroportos
- Fato de voos
- OBT (One Big Table) de voos
- Consultas de validação da camada Gold

---

## 🔄 Fluxo do projeto

```text
Dados brutos
     │
     ▼
🥉 BRONZE
Ingestão dos dados
     │
     ▼
🥈 SILVER
Limpeza e padronização
     │
     ▼
Qualidade e Auditoria
     │
     ├──────────────► Quarentena
     │                Registros inconsistentes
     ▼
Registros válidos
     │
     ▼
🥇 GOLD
Modelagem analítica
     │
     ▼
Consumo dos dados / Power BI
```

---

## 🔍 Qualidade de Dados

O projeto possui um fluxo específico para controle da qualidade dos dados.

As validações permitem identificar registros aprovados e reprovados e direcionar inconsistências para tratamento.

```text
pipelines/
└── qualidade/
    ├── 01_vra_marcado.sql
    ├── 02_vra_auditado.sql
    └── 03_vra_quarentena.sql
```

Esse processo ajuda a garantir que os dados utilizados na camada analítica tenham passado pelas regras de qualidade definidas no pipeline.

---

## 🛡️ Governança de Dados

O projeto também aplica conceitos de governança no ambiente Databricks, incluindo:

- Organização dos dados por camadas
- Rastreabilidade
- Qualidade dos dados
- Auditoria
- Linhagem
- Governança da camada Gold
- Utilização do Unity Catalog

---

## 🧰 Tecnologias utilizadas

- **Databricks**
- **Apache Spark**
- **PySpark**
- **Spark SQL**
- **SQL**
- **Delta Lake**
- **Unity Catalog**
- **Git**
- **GitHub**
- **Power BI**

---

## 📂 Estrutura do repositório

```text
voebem-analytics/
│
├── notebooks/
│   ├── 03_bronze_vra.ipynb
│   ├── 04_bronze_referencias.ipynb
│   ├── 05_silver_espelho.ipynb
│   └── 09_governanca_gold.ipynb
│
├── pipelines/
│   └── qualidade/
│       ├── 01_vra_marcado.sql
│       ├── 02_vra_auditado.sql
│       └── 03_vra_quarentena.sql
│
├── sql/
│   ├── 05b_auditoria_qualidade_silver.sql
│   ├── 06_gold_dim_aeroporto.sql
│   ├── 07_gold_fato_voos.sql
│   ├── 08_gold_obt_voos.sql
│   └── 10_validacao_gold.sql
│
└── README.md
```

---

## 📊 Camada Analítica

A camada Gold disponibiliza dados preparados para exploração analítica e construção de indicadores relacionados às operações aéreas.

A estrutura foi desenvolvida para permitir consumo posterior por ferramentas de Business Intelligence, como o **Power BI**.

---

## 📚 Contexto e aprendizados

Este projeto foi desenvolvido com base em uma **Imersão de Databricks da Alura**, servindo como aplicação prática e aprofundamento dos conteúdos estudados.

Durante o desenvolvimento foram trabalhados conceitos como:

- Arquitetura Medalhão (Bronze, Silver e Gold)
- Construção de pipelines de dados
- Processamento distribuído com Apache Spark
- Transformações com PySpark
- Consultas SQL
- Qualidade e auditoria de dados
- Modelagem para análise
- Governança de dados
- Versionamento com Git e GitHub
- Preparação de dados para consumo analítico e Power BI

---

## 👤 Autor

**Gerson Soares**

Formação em **Tecnologia da Informação** e pós-graduação em **Data Science**, com foco no desenvolvimento de competências para atuação na área de Dados.

**Data Analytics | Databricks | PySpark | SQL | Power BI**
