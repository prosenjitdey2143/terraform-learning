# EC2 Instance Terraform Module

This Terraform module provisions an EC2 instance on AWS.

## Usage

To use this module, include the following in your Terraform configuration:

```hcl
module "ec2_instance" {
  source = "./path_of_module/ec2-instance"

  ami_id = "ami-0af6763"
  instance_size = "t2.micro"
  subnet_id = "subnet-0040a8febc45"
}

## Inputs

| Name           | Description                                 | Type   | Default   | Required |
|----------------|---------------------------------------------|--------|-----------|----------|
| `ami`          | The AMI ID to use for the instance          | string |           | yes      |
| `instance_type`| The instance type                           | string | "t2.micro"| no       |
| `subnet_id`    | The ID of the subnet in which to launch the instance | string | | no |


## Outputs

| Name           | Description                              |
|----------------|------------------------------------------|
| `instance_state` | The state of the created instance       |
| `public_ip`    | The public IP address of the instance    |

License
This project is licensed under the MIT License - see the LICENSE file for details.