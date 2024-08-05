provider "aws" {
  region = var.region
}

resource "aws_instance" "demo1" {
  ami = var.ami_id
  instance_type = var.instance_type
  key_name="ec2-key-pair"
  security_groups = [ var.security_groups ]
  subnet_id = var.subnet_id
}