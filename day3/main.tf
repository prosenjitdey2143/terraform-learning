provider "aws" {
  region = "us-west-2"
}
#using ec2-intance module
module "ec2-instance" {
    source = "./modules/ec2-instance"
    ami_id = "ami-0aff18ec83b712f05"
    instance_size = "t2.micro"
    subnet_id = "subnet-0040a8fea13bf0c8e"
}

output "instance_id" {
  value = module.ec2-instance.instance_state
}
output "public_ip" {
  value = module.ec2-instance.public_ip
}