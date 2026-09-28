# 📓 Notebooks — Pipeline de Dados

Esta pasta contém os notebooks utilizados nas principais etapas de processamento do projeto **Voebem Analytics**, desenvolvido no **Databricks** com **PySpark e SQL**.

Os notebooks representam a evolução dos dados dentro da **Arquitetura Medalhão**, desde a ingestão dos dados brutos na camada Bronze até a preparação, validação e governança das informações utilizadas nas camadas analíticas.

## 🥉 03_bronze_vra.ipynb

Responsável pela ingestão dos dados de voos (VRA).

Principais etapas:

- Leitura dos arquivos CSV
- Padronização dos nomes das colunas
- Tratamento inicial dos dados
- Criação da tabela `voebem.bronze.vra`
- Preparação dos dados brutos para as etapas seguintes do pipeline

## 🥉 04_bronze_referencias.ipynb

Responsável pela ingestão e preparação das bases de referência utilizadas no projeto.

Entre os dados tratados estão informações relacionadas a aeroportos e outras referências utilizadas para enriquecer os dados de voos.

Essas informações são armazenadas na camada **Bronze** e utilizadas posteriormente nas transformações e análises.

## 🥈 05_silver_espelho.ipynb

Responsável pela preparação dos dados para a camada **Silver**.

Nesta etapa são realizadas transformações e ajustes de tipagem, incluindo tratamento de campos de data e hora e preparação dos dados para consumo nas etapas posteriores.

O notebook cria e estrutura dados no schema:

`voebem.silver`

## 🥇 09_governanca_gold.ipynb

Responsável por atividades de **validação, documentação e governança da camada Gold**.

O notebook realiza verificações sobre os dados analíticos da tabela `voebem.gold.obt_voos`, incluindo análises relacionadas a atrasos, pontualidade e situação dos voos.

Também adiciona documentação e metadados aos campos da camada analítica, facilitando a compreensão e a governança dos dados.

## 🔄 Fluxo do Pipeline

`Dados brutos → Bronze → Silver → Gold → Power BI`

A estrutura permite organizar o processamento em etapas, mantendo separação entre dados brutos, dados tratados e dados preparados para análise.

O resultado final é utilizado no **Power BI** para construção do dashboard de análise das operações aéreas.
