variable "AWS_REGION" {
  default = "eu-west-1"
<<<<<<< HEAD
<<<<<<< HEAD
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "ECS_INSTANCE_TYPE" {
  default = "t2.micro"
}
=======
***REMOVED***
=======
}
>>>>>>> 78c7374... update_vars_image

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}

variable "ECS_INSTANCE_TYPE" {
  default = "t2.micro"
<<<<<<< HEAD
***REMOVED***
>>>>>>> 32a340e... add_docker
=======
}
>>>>>>> 78c7374... update_vars_image

variable "ECS_AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-1924770e"
    us-west-2 = "ami-56ed4936"
    eu-west-1 = "ami-c8337dbb"
<<<<<<< HEAD
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 32a340e... add_docker
=======
  }
}
>>>>>>> 78c7374... update_vars_image

# Full List: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html

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

variable "JENKINS_VERSION" {
  default = "2.204.1"
}
=======
  ***REMOVED***
***REMOVED***
=======
  }
}
>>>>>>> 78c7374... update_vars_image

variable "INSTANCE_DEVICE_NAME" {
  default = "/dev/xvdh"
}

variable "JENKINS_VERSION" {
  default = "2.204.1"
<<<<<<< HEAD
***REMOVED***
>>>>>>> 32a340e... add_docker
=======
}
>>>>>>> 78c7374... update_vars_image

