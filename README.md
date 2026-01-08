# 📊 Data Warehouse em Microsoft SQL Server  
### Arquitetura Medallion (Bronze · Silver · Gold)

Este repositório apresenta um **projeto pessoal de Data Warehouse** desenvolvido em **Microsoft SQL Server**, com foco em **boas práticas de modelagem, arquitetura de dados e organização de pipelines**, utilizando o conceito de **Medallion Architecture**.

O objetivo do projeto é servir como **referência prática e educacional** para a construção de um Data Warehouse moderno, escalável e bem documentado, cobrindo desde a ingestão dos dados até a camada analítica final.

---

## 🏗️ Arquitetura do Projeto

O Data Warehouse está organizado seguindo a **Medallion Architecture**, dividida em três camadas principais:

### 🟤 Bronze Layer
- Camada de **ingestão de dados brutos**
- Estrutura próxima à origem dos dados
- Sem transformações complexas
- Foco em rastreabilidade, histórico e auditoria
- Ideal para reprocessamentos e validações iniciais

### ⚪ Silver Layer
- Camada de **tratamento e padronização**
- Limpeza de dados, normalizações e regras de negócio intermediárias
- Deduplicações, ajustes de tipos e padronização de nomenclaturas
- Base confiável para consumo analítico

### 🟡 Gold Layer
- Camada **analítica e orientada ao negócio**
- Modelagem dimensional (fatos e dimensões)
- Estruturas otimizadas para consumo por ferramentas de BI
- Métricas consolidadas e regras de negócio finais

---

## 🧩 Modelagem de Dados

O projeto inclui diferentes artefatos de modelagem, como:

- Modelos conceituais e lógicos  
- Modelagem dimensional (Star Schema / Snowflake quando aplicável)  
- Definição de tabelas fato e dimensão  
- Relacionamentos e granularidades  
- Documentação das regras de negócio aplicadas em cada camada  

Esses materiais têm como objetivo **facilitar o entendimento da arquitetura**, apoiar manutenções futuras e garantir consistência na evolução do Data Warehouse.

---

## 🗂️ Estrutura do Repositório

O repositório está organizado para refletir as camadas e componentes do Data Warehouse, incluindo:

- Scripts SQL por camada (Bronze, Silver e Gold)
- Arquivos de arquitetura e diagramas
- Documentação técnica e explicativa
- Estruturas de tabelas, views e objetos auxiliares
- Padrões de nomenclatura e organização

Essa abordagem facilita tanto o **versionamento** quanto a **manutenção e escalabilidade** do projeto.

---

## 🎯 Objetivos do Projeto

- Aplicar conceitos modernos de **arquitetura de dados**
- Demonstrar boas práticas em **SQL Server**
- Servir como **portfólio técnico**
- Apoiar estudos sobre **Data Warehousing, BI e Analytics**
- Criar uma base sólida para evolução com:
  - Orquestração
  - Automação de cargas
  - Testes de qualidade de dados
  - Integração com ferramentas de visualização

---

## 🚀 Tecnologias Utilizadas

- **Microsoft SQL Server**
- **SQL (DDL, DML, Views, Stored Procedures)**
- Conceitos de **Data Warehouse & BI**
- **Medallion Architecture**
- Modelagem Dimensional

---

## 📌 Considerações Finais

Este projeto está em constante evolução e foi pensado para refletir cenários reais encontrados em ambientes corporativos, equilibrando **clareza arquitetural, performance e boas práticas**.

