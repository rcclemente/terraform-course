
terraform {
  backend "s3" {
    bucket = "terraform-state-232aswaasdf"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
