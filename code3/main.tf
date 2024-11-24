resource "aws_lightsail_instance" "lightsail" {
  name              = "u5bt2024"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  key_pair_name     = "week2key"
  user_data         = file ("user-data.sh")
  bundle_id         = "nano_3_0"
  tags = {
    env  = "cloud"
    team = "cloudteam"

  }
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

output  "my_ip"{
value = aws_lightsail_instance.lightsail
}

output "my-username" {
  value =  aws_lightsail_instance.lightsail.username
}



