resource "aws_dynamodb_table" "cliente" {
  name         = "cliente"
  billing_mode = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5

  hash_key = "cpf"

  attribute {
    name = "cpf"
    type = "S"
  }

  attribute {
    name = "id"
    type = "N"
  }

  attribute {
    name = "nome"
    type = "S"
  }

  attribute {
    name = "telefone"
    type = "S"
  }

  attribute {
    name = "email"
    type = "S"
  }

   global_secondary_index {
    name               = "IdIndex"
    hash_key           = "id"
    projection_type    = "ALL"
    write_capacity     = 5
    read_capacity      = 5
  }

  global_secondary_index {
    name               = "NomeIndex"
    hash_key           = "nome"
    projection_type    = "ALL"
    write_capacity     = 5
    read_capacity      = 5
  }

  global_secondary_index {
    name               = "TelefoneIndex"
    hash_key           = "telefone"
    projection_type    = "ALL"
    write_capacity     = 5
    read_capacity      = 5
  }

  global_secondary_index {
    name               = "EmailIndex"
    hash_key           = "email"
    projection_type    = "ALL"
    write_capacity     = 5
    read_capacity      = 5
  }

  tags = {
    Name = "TabelaCliente"
  }
}
