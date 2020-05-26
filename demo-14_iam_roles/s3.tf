resource "aws_s3_bucket" "b" {
  bucket = "mybucket-c29df1aaa"
  acl    = "private"

  tags = {
    Name = "mybucket-c29df1aaa"
  }
}

