variable "key_pair" {
  description = "key-pair for ec2 intance"
  type = string
  default = "ec2-key-pair"
}
variable "ami_id" {
  description = "ami id for ec2 intance"
  type = string
}
variable "instance_size" {
  description = "instance size for ec2 intance"
  type = string
  default = "t2.micro"
}
variable "subnet_id" {
  description = "subnet_id for ec2 intance"
  type = string
  default = "subnet-0040a8fea13bf0c8e"
}