provider "aws" {
  region = "us-west-2"
}
provider "vault" {
  address = "http://52.27.91.26:8200"
  skip_child_token = true
  auth_login {
    path = "auth/approle/login"
    
    parameters = {
      role_id = "7874dd09-61c0-3e5c-3b0a-055353befd1f"
      secret_id = "10964a49-5b9a-a6ce-9ead-28cf1d8f8468"
    }
  }
}
//data retrive from the vault
data "vault_kv_secret_v2" "example" {
  mount = "topSecret"
  name  = "secret-things"
}
resource "aws_instance" "ec2" {
    ami = "ami-0aff18ec83b712f05"
    instance_type  = "t2.micro"
    subnet_id = "subnet-0040a8fea13bf0c8e"
tags = {
  Name = data.vault_kv_secret_v2.example.data["userdata"]
}
}
