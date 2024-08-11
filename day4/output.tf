output "instance_id" {
  value = module.ec2-instance.instance_state
}
output "public_ip" {
  value = module.ec2-instance.public_ip
}