provider "aws" {
  region = "us-west-2"
}
resource "aws_instance" "example" {
  
  ami = "ami-0aff18ec83b712f05"
  instance_type = "t2.micro"
  security_groups = [ "sg-047de510d489121fc" ]
  subnet_id = "subnet-0040a8fea13bf0c8e"
  key_name = "ec2-key-pair"
  tags = {
    name: "example-server"
  }
}