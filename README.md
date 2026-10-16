
### Academia UA: Sistema de Gerenciamento de Academia 

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-18-4169E1?style=flat-square&logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Database-4479A1?style=flat-square)
![Status](https://img.shields.io/badge/Status-Em%20desenvolvimento-yellow?style=flat-square)

## 📖 Sobre o projeto

O **Academia UA** é um projeto acadêmico desenvolvido para a disciplina de Banco de Dados, com o objetivo de estruturar um sistema de gerenciamento para uma academia.

A proposta surgiu da necessidade de organizar informações que fazem parte do funcionamento cotidiano desse tipo de estabelecimento, como cadastros de alunos, instrutores, planos de assinatura, aulas oferecidas e registros de frequência.

O projeto busca estabelecer uma base de dados organizada e consistente, permitindo que diferentes informações se relacionem de maneira adequada e sirvam como fundamento para futuras funcionalidades.

## 🎯 Objetivos

- Estruturar um banco de dados relacional para gerenciamento de academia.
- Desenvolver modelos conceitual e lógico.
- Aplicar relacionamentos 1:N e N:N entre entidades.
- Implementar chaves primárias, estrangeiras e restrições de integridade.
- Documentar as entidades por meio de um dicionário de dados.
- Desenvolver e executar scripts SQL compatíveis com PostgreSQL.

## 🛠️ Tecnologias utilizadas

| Tecnologia | Finalidade |
|---|---|
| PostgreSQL 18 | Sistema gerenciador de banco de dados |
| SQL | Criação e definição das estruturas do banco |
| pgAdmin 4 | Desenvolvimento, execução e gerenciamento dos scripts |
| brModelo | Modelagem conceitual do banco de dados |

## 🗃️ Estrutura do banco de dados

O banco `academia_ua` é composto por seis tabelas principais:

| Tabela | Descrição |
|---|---|
| **Instrutor** | Armazena os dados dos instrutores e suas especialidades. |
| **Plano** | Registra os planos de assinatura oferecidos pela academia. |
| **Aula** | Organiza as aulas, seus horários, capacidades e instrutores. |
| **Aluno** | Armazena informações cadastrais e o plano associado a cada aluno. |
| **Frequencia** | Registra a data e o horário de entrada dos alunos. |
| **Inscreve** | Relaciona alunos às aulas em que estão inscritos. |

### Relacionamentos

- **Instrutor → Aula (1:N):** um instrutor pode ministrar várias aulas.
- **Plano → Aluno (1:N):** um plano pode estar associado a vários alunos.
- **Aluno → Frequencia (1:N):** um aluno pode possuir vários registros de frequência.
- **Aluno ↔ Aula (N:N):** um aluno pode participar de várias aulas, e uma aula pode receber vários alunos. Esse relacionamento é representado pela tabela `Inscreve`.

## 📂 Organização do repositório

```text
academia-ua/
├── 01_create_database.sql
├── 02_create_tables.sql
├── docs/
│   └── DOCS-ACADEMIA-UA.docx
└── README.md
```

O primeiro script é responsável pela criação do banco de dados, enquanto o segundo implementa as seis tabelas, suas chaves e seus relacionamentos.

A pasta `docs` reúne a documentação acadêmica, incluindo a descrição do sistema, a modelagem conceitual, o modelo lógico e o dicionário de dados.

## 🚀 Como executar

**Pré-requisitos:** PostgreSQL instalado e acesso ao pgAdmin 4 ou a outro cliente SQL compatível.

**1. Criar o banco de dados**

Conecte-se a um banco administrativo, como `postgres`, e execute:

`01_create_database.sql`

O script criará o banco de dados `academia_ua`.

**2. Criar as tabelas**

Conecte-se ao banco `academia_ua` e execute:

`02_create_tables.sql`

As tabelas serão criadas respeitando a ordem de dependência das chaves estrangeiras:

1. Instrutor
2. Plano
3. Aula
4. Aluno
5. Frequencia
6. Inscreve

**3. Verificar a criação**

No pgAdmin, acesse:

`Databases → academia_ua → Schemas → public → Tables`

As seis tabelas deverão aparecer na lista.

> **Observação:** os scripts foram preparados para a criação inicial do banco de dados. Executá-los novamente sobre estruturas já existentes poderá gerar erros.

## 📚 Documentação

A documentação do projeto apresenta as decisões tomadas durante o desenvolvimento do banco de dados, desde a identificação das entidades e seus relacionamentos até a implementação física no PostgreSQL.

O dicionário de dados descreve os campos, tipos e restrições utilizados, buscando manter a consistência entre a modelagem e os scripts SQL.

## 📌 Status do projeto

- [x] Modelagem conceitual
- [x] Modelagem lógica
- [x] Dicionário de dados
- [x] Script de criação do banco de dados
- [x] Script de criação das tabelas
- [x] Execução inicial no PostgreSQL
- [ ] Implementação de operações CRUD
- [ ] Consultas SQL para análise de dados
- [ ] Funcionalidades adicionais

## 👥 Desenvolvedores

**Bruna da Silva Sant'Ana**  
**Gabriel Ortega Vieira**

Projeto desenvolvido para a disciplina de **Banco de Dados**, sob orientação do professor **Caio**.

---

*Academia UA — Projeto acadêmico de modelagem e implementação de banco de dados relacional | 2026.*