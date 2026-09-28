# 🛡️ Pipeline de Qualidade de Dados

Esta pasta contém as etapas de controle de qualidade aplicadas aos dados de voos (VRA) antes de sua utilização nas camadas analíticas do projeto VoeBem Analytics.

O processo foi estruturado para identificar registros com possíveis problemas de qualidade, realizar auditoria e separar dados que necessitam de tratamento.

## 🔄 Fluxo de Qualidade

### 1. `01_vra_marcado.sql`

Realiza a identificação e marcação dos registros de acordo com as regras de qualidade definidas para os dados de voos.

### 2. `02_vra_auditado.sql`

Executa a etapa de auditoria dos dados, permitindo acompanhar os registros avaliados durante o processo de qualidade.

### 3. `03_vra_quarentena.sql`

Separa os registros que apresentam problemas de qualidade, direcionando-os para quarentena e evitando que dados inconsistentes avancem para as etapas analíticas.

## 🎯 Objetivo

Garantir maior confiabilidade dos dados utilizados no pipeline, mantendo rastreabilidade sobre registros identificados durante as validações e separando dados que necessitam de tratamento antes do consumo analítico.
