variable "AWS_REGION" {
  default = "us-east-1"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "../mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "../mykey.pub"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-03e33c1cefd1d3d74"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
}

# add in terraform.tfvars
# or via cli
#   $> terraform apply -var RDS_PASSWORD=<password>
variable "RDS_PASSWORD" {
}

