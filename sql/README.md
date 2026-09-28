# 🗄️ SQL — Camada Analítica e Validação

Esta pasta contém os scripts SQL responsáveis pela auditoria da camada Silver, construção das estruturas analíticas da camada Gold e validação final dos dados do projeto **Voebem Analytics**.

Os scripts complementam o pipeline desenvolvido no **Databricks**, aplicando regras de negócio e preparando os dados para consumo analítico.

## 🔍 05b_auditoria_qualidade_silver.sql

Realiza a auditoria das regras de qualidade aplicadas na camada **Silver**.

O script consulta os eventos de qualidade registrados em `voebem.silver.eventos_qualidade` e apresenta, para cada regra:

- Registros aprovados
- Registros reprovados
- Percentual de reprovação

A consulta utiliza a execução mais recente do processo de qualidade.

## 🛬 06_gold_dim_aeroporto.sql

Cria a dimensão de aeroportos:

`voebem.gold.dim_aeroporto`

A dimensão é construída a partir dos aeroportos de origem e destino presentes nos dados de voos e enriquecida com informações do cadastro de aeródromos.

O processo também trata possíveis duplicidades no cadastro e preserva aeroportos utilizados nos voos mesmo quando não estão disponíveis na base de referência.

## ✈️ 07_gold_fato_voos.sql

Cria a tabela fato:

`voebem.gold.fato_voos`

A tabela possui uma linha por etapa de voo e concentra as principais regras de negócio utilizadas na análise.

Entre os tratamentos realizados estão:

- Indicadores de pontualidade com tolerância de 15 minutos
- Classificação de voos domésticos e internacionais
- Tratamento das decisões relacionadas aos registros diagnosticados na quarentena
- Preparação das métricas de atraso
- Manutenção de registros válidos mesmo quando determinados atributos de referência não estão disponíveis

## 📊 08_gold_obt_voos.sql

Cria a tabela analítica:

`voebem.gold.obt_voos`

A estrutura segue o conceito de **One Big Table (OBT)**, reunindo em uma única tabela os principais atributos e métricas necessários para análise.

A tabela disponibiliza informações como:

- Companhia aérea
- Número do voo
- Aeroporto de origem e destino
- Município e UF
- Tipo de linha
- Escopo do voo
- Indicadores de pontualidade
- Métricas de atraso

Essa estrutura reduz a necessidade de joins adicionais para consumo analítico.

## ✅ 10_validacao_gold.sql

Realiza uma validação final das principais estruturas da camada **Gold**.

O script verifica a quantidade de registros das tabelas:

- `voebem.gold.dim_aeroporto`
- `voebem.gold.fato_voos`
- `voebem.gold.obt_voos`

Essa etapa permite conferir a criação das estruturas e comparar os volumes de dados ao final do processamento.

## 🔄 Fluxo SQL

`Silver → Auditoria de Qualidade → Dimensão/Fato Gold → OBT → Validação → Power BI`

Os scripts desta pasta representam a preparação final dos dados para consumo analítico e visualização no **Power BI**.
