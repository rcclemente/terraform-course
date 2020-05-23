variable "AWS_ACCESS_KEY" {
<<<<<<< HEAD
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "eu-west-1"
}
=======
***REMOVED***

variable "AWS_SECRET_KEY" {
***REMOVED***

variable "AWS_REGION" {
  default = "eu-west-1"
***REMOVED***
>>>>>>> 986ba1c... add_demos

variable "WIN_AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-30540427"
    us-west-2 = "ami-9f5efbff"
    eu-west-1 = "ami-7ac78809"
<<<<<<< HEAD
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "INSTANCE_USERNAME" {
  default = "Terraform"
}

variable "INSTANCE_PASSWORD" {
}
=======
  ***REMOVED***
***REMOVED***

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
***REMOVED***

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
***REMOVED***

variable "INSTANCE_USERNAME" {
  default = "Terraform"
***REMOVED***

variable "INSTANCE_PASSWORD" {
***REMOVED***
>>>>>>> 986ba1c... add_demos

