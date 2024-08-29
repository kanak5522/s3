provider "aws" {
    region = "sa-east-1"  
}

resource "aws_instance" "kanak" {
    instance_type = "t2.micro"
    ami ="ami-07b48a61d685adada"
    subnet_id = "subnet-0a2ded97b4c525dda"
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "kanak-1234"
}

resource "aws_dynamodb_table" "terraform_lock" {
    name = "terraform-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
      name = "LockID"
      type = "S"
    }
  
}
