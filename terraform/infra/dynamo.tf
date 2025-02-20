resource "aws_dynamodb_table" "my_table" {
    name = "${var.env}-ansiform-table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "userID"
    attribute {
      name = "userID"
      type = "S"
    }
    tags = {
      Name = "${var.env}-ansiform-table"
      Environment = var.env
    }
  
}