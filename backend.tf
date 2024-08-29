terraform {
  backend "s3" {
    bucket = "kanak-1234"
    key    = "kanak/terraform.tfstate"
    region = "sa-east-1"
    dynamodb_table = "terraform-lock"
  }
}
