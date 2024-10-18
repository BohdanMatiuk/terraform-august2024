terraform {
    backend "s3" {
        bucket = "bohdan-bucket-12345"
        key = "terraform.tfstate"
        region = "us-east-2"
        dynamodb_table = "lockstate"
    }
}