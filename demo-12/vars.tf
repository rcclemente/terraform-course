variable "AWS_REGION" {
<<<<<<< HEAD
  default = "eu-west-1"
<<<<<<< HEAD
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}
=======
=======
  default = "us-east-1"
>>>>>>> 59ddf6f... demo12
***REMOVED***

variable "PATH_TO_PRIVATE_KEY" {
  default = "../mykey"
***REMOVED***

variable "PATH_TO_PUBLIC_KEY" {
  default = "../mykey.pub"
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

variable "RDS_PASSWORD" {
}
=======
  ***REMOVED***
***REMOVED***

variable "RDS_PASSWORD" {
***REMOVED***
>>>>>>> 986ba1c... add_demos

