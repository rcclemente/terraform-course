provider "aws" {
  access_key = ""
  secret_key = ""
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-03e33c1cefd1d3d74"
  instance_type = "t2.micro"
}
