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

resource "aws_iam_user" "user1" {
  name = "dev_server" 


}
resource "aws_lightsail_instance" "lightsail" {
  name              = "dev_server"
  availability_zone = "us-east-1a"
  blueprint_id      = "ubuntu_22_04"
  user_data = file("user_data3.sh")
  bundle_id         = "medium_1_0"
  key_pair_name     = "week2key"
  tags = {
    foo = "dev_server"
  }
}
