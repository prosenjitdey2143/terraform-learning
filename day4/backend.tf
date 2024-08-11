terraform {
  backend "s3" {
    key    = "prosenjit/terraform.tfstate"
    region = "us-west-2"
    bucket = "prosenjit-dey-backend-state"
    dynamodb_table = "terraform-lock"
  }
}