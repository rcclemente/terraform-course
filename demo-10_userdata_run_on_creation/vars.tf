variable "AWS_REGION" {
<<<<<<< HEAD:demo-10/vars.tf
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
>>>>>>> d7b1608... mv_demo_10:demo-10_userdata_run_on_creation/vars.tf
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
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
<<<<<<< HEAD
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
=======
  }
}

variable "INSTANCE_DEVICE_NAME" {
  default = "/dev/xvdh"
}
>>>>>>> 78c7374... update_vars_image

