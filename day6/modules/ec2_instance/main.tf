resource "aws_key_pair" "key-pair"{
  key_name="aws-key-pair"
  public_key = file("~/.ssh/id_rsa.pub")
}
resource "aws_instance" "ec2" {
  ami = var.ami_id
  subnet_id = var.subnet_id
  key_name = aws_key_pair.key-pair.key_name
  instance_type = var.instance_type
  tags = {
    Name = "My-Terraform-EC2-Instance"  
    Environment = terraform.workspace
  }
}
output "public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.ec2.public_ip
}