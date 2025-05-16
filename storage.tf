resource "aws_s3_bucket" "dataclouders-infra-demo" {
  bucket = "dataclouders-infra-demo-github"
}

resource "aws_s3_bucket" "dataclouders-terraform-states" {
  bucket = "dataclouders-terraform-states"
}

resource "aws_dynamodb_table" "productos" {
  name           = "productos"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "pk"
  range_key      = "sk"

  attribute {
    name = "pk"
    type = "S"
  }
  attribute {
    name = "sk"
    type = "S"
  }

  globasdasdasdasdal_secondary_index {
    name = "inverted-index"
    hash_key = "sk"
    range_key = "pk"
    projection_type = "ALL"
  }
}
