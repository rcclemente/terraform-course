variable "AWS_REGION" {
  type    = string
  default = "eu-west-1"
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
}
>>>>>>> 78c7374... update_vars_image

variable "ports" {
  type = map(list(string))
  default = {
    "22" = [ "127.0.0.1/32", "192.168.0.0/24" ]
    "443" = [ "0.0.0.0/0" ]
<<<<<<< HEAD
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
  }
}
>>>>>>> 78c7374... update_vars_image
