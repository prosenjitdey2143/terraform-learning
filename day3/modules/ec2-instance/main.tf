resource "aws_instance" "demo-server" {
  key_name = var.key_pair
  ami = var.ami_id
  instance_type = var.instance_size
  subnet_id = var.subnet_id
}

resource "aws_security_group" "main" {
  name = "module-ec2-security-group"
  description = "creating a security group for ec2"

  ingress {
    from_port = 22
    protocol = "TCP"
    to_port = 22
    cidr_blocks = [ "172.31.0.0/16" ]
  }
}