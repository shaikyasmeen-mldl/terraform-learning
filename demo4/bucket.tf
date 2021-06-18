
resource "aws_s3_bucket" "b" {
  bucket = ""
  acl    = "private"

  tags = {
    Name        = "yyasu7"
    Environment = "Dev"
  }
}
