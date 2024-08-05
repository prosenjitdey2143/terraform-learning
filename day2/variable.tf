variable "region" {
  description = "default region"
  type = string
  default = "us-west-2"
}
variable "ami_id" {
  description = "ami id for ec2"
  type = string
  default = "ami-0aff18ec83b712f05"
}
variable "instance_type" {
  description = "ec2 instance size"
  type = string
  default = "t2.micro"
}
variable "security_groups" {
  description = "security group for ec2"
  type = string
  default = "sg-047de510d489121fc"
}
variable "subnet_id" {
  description = "subnet id for ec2"
  type = string
  default = "subnet-0040a8fea13bf0c8e"
}

