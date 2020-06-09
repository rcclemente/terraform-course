resource "aws_s3_bucket" "terraform-state" {
  bucket = "terraform-state-232aswaasdf"
  acl    = "private"

  tags = {
    Name = "Terraform state"
  }
}

