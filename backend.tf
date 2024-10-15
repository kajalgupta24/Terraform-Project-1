terraform {
  backend "s3" {
    bucket = "aws_s3_bucket_statefile"
    key = "./terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
    dynamodb_table = "terraform_lock"    
  }
}