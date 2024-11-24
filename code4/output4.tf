output  "my_ip_public"{
value = aws_lightsail_instance.lightsail.public_ip_address


}
output "my_ip_private" {
  value = aws_lightsail_instance.lightsail.private_ip_address
}

output "my-username" {
  value = aws_lightsail_instance.lightsail.username
}