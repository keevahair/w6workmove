resource "aws_lightsail_instance" "server1" {
  name = "sever-dev"
  availability_zone = "us-east-1a"
  bundle_id = "nano_3_0"
  blueprint_id = "amazon_linux_2"
  user_data = ("setup.sh")
}