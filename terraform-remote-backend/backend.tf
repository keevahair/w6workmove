terraform {
  backend "s3" {
    bucket = "mon1sjiurtuytrtbucket"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "statenjhiiyuuigitfilelock"
    encrypt = true
    
  }
}