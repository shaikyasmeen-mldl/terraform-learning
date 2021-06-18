resource "aws_s3_bucket" "b" {
  bucket = "my-yasmeen-test-bucket"
  acl    = "private"

  tags = {
    Name        = "yasuu-bucket"
    Environment = "Dev"
  }
}
