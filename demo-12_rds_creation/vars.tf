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
<<<<<<< HEAD
>>>>>>> 59ddf6f... demo12
***REMOVED***
=======
}
>>>>>>> 78c7374... update_vars_image

variable "PATH_TO_PRIVATE_KEY" {
  default = "../mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "../mykey.pub"
<<<<<<< HEAD
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-03e33c1cefd1d3d74"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
<<<<<<< HEAD
<<<<<<< HEAD
  }
}

variable "RDS_PASSWORD" {
}
=======
  ***REMOVED***
***REMOVED***
=======
  }
}
>>>>>>> 78c7374... update_vars_image

# add in terraform.tfvars
# or via cli
#   $> terraform apply -var RDS_PASSWORD=<password>
variable "RDS_PASSWORD" {
<<<<<<< HEAD
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

