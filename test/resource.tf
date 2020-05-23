<<<<<<< HEAD
<<<<<<< HEAD
provider "aws" {

}

variable "AWS_REGION" {
  type = string
}
=======
***REMOVED***
=======
provider "aws" {
>>>>>>> 78c7374... update_vars_image

}

variable "AWS_REGION" {
  type = string
<<<<<<< HEAD
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
}
>>>>>>> 78c7374... update_vars_image

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "my_ami"
<<<<<<< HEAD
<<<<<<< HEAD
  }
}

resource "aws_instace" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
}
=======
  ***REMOVED***
***REMOVED***

resource "aws_instace" "example" {
  ami           = var.AMIS[var.AWS_REGION]
***REMOVED***
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
  }
}

resource "aws_instace" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
}
>>>>>>> 78c7374... update_vars_image
