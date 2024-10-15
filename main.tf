provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "kajal_ec2" {
    ami = "ami-0dee22c13ea7a9a67"
    instance_type = "t2.micro"  
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "aws_s3_bucket_statefile"
}

resource "aws_dynamodb_table" "statefile_lock" {
    name = "terraform_lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
      name = "LockID"
      type = "S"
    }
}