resource "aws_s3_bucket" "my-statefile" {
  bucket = "${var.environment}-statefile-s3-bucket"
  acl    = "public-read"
  policy = file("policy.json")

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
  tags = {
    Name        = "My bucket"
    Environment = var.environment
  }
}
