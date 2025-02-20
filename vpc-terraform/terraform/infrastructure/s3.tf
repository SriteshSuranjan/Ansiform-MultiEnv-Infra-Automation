resource "aws_s3_bucket" "main" {
  bucket = "${var.env}-env-ansiform-iaac-bucket-77"
  tags = {
    Name = "${var.env}-env-ansiform-iaac-bucket-77"
    environment = var.env
  }
}