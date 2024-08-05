output "instance_public_ip" {
  description = "its return created ec2 insctance's public ip"
  value = aws_instance.demo1.public_ip
}