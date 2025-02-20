resource "aws_s3_bucket" "my_bucket" {
  bucket = "${var.env}-ansiform-bucket"
  tags = {
    Name = "${var.env}-ansiform-bucket"
    Environment = var.env
  }
}