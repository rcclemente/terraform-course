variable "AWS_REGION" {
  default = "us-east-1"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "../mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "../mykey.pub"
}

variable "ECS_INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "ECS_AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-0b22c910bce7178b6"
    us-west-2 = "ami-0633e2a3c7135c18a"
    eu-west-1 = "ami-0cf112c4c967e0437"
  }
}

# Full List: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html
