terraform {
  backend "s3" {
    bucket = "terraform-state-s6mp1sbx"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
