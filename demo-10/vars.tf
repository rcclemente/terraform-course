variable "AWS_REGION" {
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
***REMOVED***

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
***REMOVED***

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
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

variable "INSTANCE_DEVICE_NAME" {
  default = "/dev/xvdh"
}
=======
  ***REMOVED***
***REMOVED***

variable "INSTANCE_DEVICE_NAME" {
  default = "/dev/xvdh"
***REMOVED***
>>>>>>> 986ba1c... add_demos

