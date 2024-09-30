
# Foodtech Infra DynamoDB

Este repositório contém a configuração do **Terraform** para criar uma tabela **DynamoDB** na **AWS** chamada **"cliente"**. Este guia vai ajudá-lo a entender como configurar e executar a criação da tabela.
 
## Visão Geral do Projeto

Este projeto utiliza **infraestrutura como código** (IaC) para criar e gerenciar uma tabela DynamoDB que armazena informações dos clientes do sistema **Foodtech**.

## Recursos Criados

### Tabela DynamoDB

A tabela **DynamoDB** possui os seguintes atributos:

- **cpf** (_String_): A chave de **hash** da tabela.
- **id** (_Number_): Um identificador único para cada cliente.
- **nome** (_String_): O nome do cliente.
- **telefone** (_String_): O número de telefone do cliente.
- **email** (_String_): O endereço de email do cliente.

A tabela está configurada com o modo de cobrança **PROVISIONED**, com uma capacidade de leitura e gravação de **5 unidades** cada.

## Estrutura do Repositório

- **terraform/main.tf**: Contém as definições da infraestrutura para criar a tabela DynamoDB.

## Como Configurar

### 1. Clonar o Repositório

```sh
git clone https://github.com/grupo27/foodtech-infra-dynamoDB.git
cd foodtech-infra-dynamoDB
```

### 2. Inicializar o Terraform

Inicialize o Terraform para configurar os módulos e o backend:

```sh
terraform init
```

### 3. Aplicar as Configurações

Aplique as configurações para criar a tabela DynamoDB:

```sh
terraform apply
```

Isso criará a tabela **"cliente"** no **AWS DynamoDB** com os atributos definidos.

## Fluxo de CI/CD

Este projeto utiliza **GitHub Actions** para automatizar o processo de provisionamento da infraestrutura. O workflow pode ser encontrado em `.github/workflows/terraform.yml`.

### Detalhes do Workflow

- **Deploy da Infraestrutura**: Toda vez que um push é feito na branch `main`, o workflow executa as etapas necessárias para aplicar as alterações no DynamoDB usando Terraform.
- **Gerenciamento de Variáveis**: Utilizamos o **Git Actions** para gerenciar variáveis de ambiente e credenciais de forma segura.

## Tecnologias Utilizadas

- **Terraform**: Gerenciamento de infraestrutura
- **AWS DynamoDB**: Serviço de banco de dados NoSQL
- **GitHub Actions**: Automatização de deploy

## Como Contribuir

1. Faça um fork do projeto.
2. Crie uma nova branch: `git checkout -b feature/nova-feature`.
3. Faça suas alterações e commit: `git commit -m 'Adicionando nova feature'`.
4. Faça push para a branch: `git push origin feature/nova-feature`.
5. Abra um Pull Request.

## Contato

Para dúvidas, entre em contato com a equipe via [email](mailto:support@foodtech.com).

---

> **Nota**: Certifique-se de que as credenciais da AWS estejam configuradas corretamente antes de aplicar qualquer configuração.

