output  "my_ip"{
value = aws_lightsail_instance.lightsail.public_ip_address
}
output "my-username" {
  value = aws_lightsail_instance.lightsail.username
}