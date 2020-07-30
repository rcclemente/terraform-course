variable "AWS_REGION" {
  default = "us-west-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-03e33c1cefd1d3d74"
    us-west-2 = "ami-0ee1a20d6b0c6a347"
    eu-west-1 = "ami-0a4fbfab82b4aee91"
  }
}
