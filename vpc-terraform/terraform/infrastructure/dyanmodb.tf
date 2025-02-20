resource "aws_dynamodb_table" "name" {
  name = "${var.env}-ansiform-vpc-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "userID"
  attribute {
    name = "userID"
    type = "S"
  }
  tags = {
    name = "${var.env}-ansiform-vpc-table"
    environment = var.env
  }
}