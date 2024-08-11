provider "aws" {
  region = "us-west-2"
}
#using ec2-intance module
module "ec2-instance" {
    source = "../day3/modules/ec2-instance"
    ami_id = "ami-0aff18ec83b712f05"
    instance_size = "t2.micro"
    subnet_id = "subnet-0040a8fea13bf0c8e"
}


resource "aws_s3_bucket" "new-bucket" {
    bucket = "prosenjit-dey-backend-state"
}
resource "aws_dynamodb_table" "terraform-lock" {
  name = terraform.lock
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "lockID"
  attribute {
    name="lockID"
    type = "s"
  }
}