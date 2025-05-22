# ✈ Sistema de Passagens Aéreas

Desenvolvedores: Jhony Santos e Karleandro Silva

---

## 📌 Descrição

Este projeto consiste em um **Sistema de Passagens Aéreas**, desenvolvido pelos discentes do curso de Ciência da Computação - UFAL Arapiraca, com foco acadêmico para simular a operação de uma plataforma de reservas e gerenciamento de voos, clientes, aeronaves (aviões) e passagens. Utiliza banco de dados relacional para armazenar os dados e facilitar consultas relevantes para o sistema.

O sistema foi desenvolvido com base nos princípios da **normalização**, respeitando as **primeiras formas normais (1FN, 2FN e 3FN)**, a fim de garantir integridade e evitar redundância de dados. Além disso, foram implementadas técnicas avançadas de banco de dados, como **views**, **funções armazenadas** e **regras de negócio e acesso**, que tornam o sistema mais robusto, organizado e seguro.

---

## 🛠️ Funcionalidades

1. Cadastro de **aeroportos**, **aviões**, **voos**, **clientes** e **passagens**;
2. Relacionamento entre voos e aeronaves, e entre passagens e clientes;
3. Armazenamento estruturado em arquivos `.csv` para facilitar testes e manipulação dos dados;
4. Scripts SQL para **criação (DDL)** e **inserção (DML)** das tabelas em um SGBD relacional;
5. Implementação de **views** para facilitar consultas complexas;
6. Criação de **funções armazenadas** para cálculos automáticos (ex: total gasto por cliente);
7. Definição de **regras de acesso e negócio** para maior segurança e controle dos dados.

---

## 💻 Tecnologias Utilizadas

1. **Banco de Dados**: PostgreSQL (ou compatível com SQL padrão)
2. **Dados**: Arquivos `.csv` com registros de aeroportos, aviões, voos, clientes e passagens
3. **Scripts**:
   - `ddl.txt`: Criação das tabelas
   - `dml.txt`: Inserção de dados de exemplo
   - `advanced_features.sql`: Views, functions e regras de acesso
4. **Sistema Operacional**: Compatível com Windows, Linux ou MacOS

---

## 📂 Estrutura do Projeto
    Sistema de Passagens Aéreas/
    ├── csv/
    │   ├── aeroporto.csv
    │   ├── avioes.csv
    │   ├── cliente.csv
    │   ├── passagem.csv
    │   └── voos.csv
    ├── ddl e dml/
    │   ├── ddl.sql
    │   └── dml.sql
    └── README.md

---

## ▶️ Como Utilizar

1. **Importar o esquema do banco de dados:**
   Use um gerenciador de banco de dados (como DBeaver, pgAdmin ou o terminal) e execute o script de criação:
   ```sql
   -- ddl.txt
