variable "AWS_ACCESS_KEY" {
<<<<<<< HEAD
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "us-east-1"
}
=======
***REMOVED***

variable "AWS_SECRET_KEY" {
***REMOVED***

variable "AWS_REGION" {
  default = "us-east-1"
***REMOVED***
>>>>>>> 986ba1c... add_demos

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
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
  default = "ubuntu"
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
  default = "ubuntu"
***REMOVED***
>>>>>>> 986ba1c... add_demos

