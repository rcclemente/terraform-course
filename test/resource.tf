provider "aws" {

}

variable "AWS_REGION" {
  type = string
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "my_ami"
  }
}

resource "aws_instace" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
}
