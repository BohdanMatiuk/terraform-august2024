provider aws {
    region = "us-east-2"
} 
resource "aws_key_pair" "deployer" {
  key_name   = "bastion_key"
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_s3_bucket" "example" {
  bucket = "bucket-bohdan12"
  force_destroy = true
 }

 resource "time_sleep" "wait_10_seconds" {
  depends_on = [aws_s3_bucket.example]

  create_duration = "10s"
}

 resource "aws_s3_object" "object" {
  depends_on = [time_sleep.wait_10_seconds]
  bucket = "bucket-bohdan12"
  key    = "main.tf"
  source = "main.tf"
 }

 resource "aws_s3_bucket" "example2" {
  bucket_prefix = "bucket-bohdan"
  force_destroy = true
 }
