terraform {
  backend "s3" {
    bucket = "terraform-state-3afsd2"
    key     = "terraform/demo4"
  }
}
