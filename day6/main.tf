provider "aws" {
  region = "us-west-2"
}
variable "ami_id" {
  description = "ec2-instace ami id"
  type = string
  
}
variable "subnet_id" {
  description = "ec2-instace subnet_id"
  type = string
  
}
variable "instance_type" {
  description = "ec2-instace instance_type"
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "stage"= "t2.medium"
    "production"= "t2.large"
  }
}
module "ec2_instance" {
    source = "./modules/ec2_instance"
    ami_id = var.ami_id
    instance_type = lookup(var.instance_type,terraform.workspace,"t2.micro")
    subnet_id = var.subnet_id
}