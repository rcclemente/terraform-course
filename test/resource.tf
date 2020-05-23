<<<<<<< HEAD
provider "aws" {

}

variable "AWS_REGION" {
  type = string
}
=======
***REMOVED***

***REMOVED***

variable "AWS_REGION" {
  type = string
***REMOVED***
>>>>>>> 191d763... adding_other_demos

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "my_ami"
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
