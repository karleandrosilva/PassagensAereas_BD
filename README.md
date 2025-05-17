# ✈ Sistema de Passagens Aéreas

  Desenvolvedores: Jhony Santos e Karleandro Silva
--
## 📌 Descrição

Este projeto consiste em um **Sistema de Passagens Aéreas**, desenvolvido pelos discentes do curso de ciência da computação - UFAL Arapiraca, com foco acadêmico para simular a operação de uma plataforma de reservas e gerenciamento de voos, clientes, aeronaves (aviões) e passagens. Utiliza banco de dados relacional para armazenar os dados e facilitar consultas relevantes para o sistema.

---

## 🛠️ Funcionalidades

1. Cadastro de **aeroportos**, **aviões**, **voos**, **clientes** e **passagens**;
2. Relacionamento entre voos e aeronaves, e entre passagens e clientes;
3. Armazenamento estruturado em arquivos `.csv` para facilitar testes e manipulação dos dados;
4. Scripts SQL para **criação (DDL)** e **inserção (DML)** das tabelas em um SGBD relacional.

---

## 💻 Tecnologias Utilizadas

1. **Banco de Dados**: PostgreSQL (ou compatível com SQL padrão)
2. **Dados**: Arquivos `.csv` com registros de aeroportos, aviões, voos, clientes e passagens
3. **Scripts**:
  - `ddl.txt`: Criação das tabelas
  - `dml.txt`: Inserção de dados de exemplo
4. **Sistema Operacional**: Compatível com Windows, Linux ou MacOS

---

## 📂 Estrutura do Projeto
    Sistema de Passagens Aéreas/
    ├── csv/
    │ ├── aeroporto.csv
    │ ├── avioes.csv
    │ ├── cliente.csv
    │ ├── passagem.csv
    │ └── voos.csv
    ├── ddl e dml/
    │ ├── ddl.txt
    │ └── dml.txt
    └── README.md

---

## ▶️ Como Utilizar

1. **Importar o esquema do banco de dados**:
   Use um gerenciador de banco de dados (como DBeaver, pgAdmin ou o terminal) e execute o script de criação:
   ```sql
   -- ddl.txt
2. **Inserir os dados:** Após criar as tabelas, execute o script dml.txt para popular o banco com dados de exemplo.
3. **Alternativa com CSVs:** Importe os arquivos .csv diretamente em uma tabela correspondente no banco, caso prefira manipular os dados dessa forma.
