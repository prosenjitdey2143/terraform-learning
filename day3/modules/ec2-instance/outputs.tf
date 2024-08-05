output "instance_state" {
    description = "its shows created instance state"
    value = aws_instance.demo-server.instance_state
}
output "public_ip" {
    description = "its shows created instance state"
    value = aws_instance.demo-server.public_ip
}