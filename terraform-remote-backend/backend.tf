terraform {
  backend "s3" {
    bucket = "mon1stbucket"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "statefilelock"
    encrypt = true
    
  }
}