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

variable "ECS_INSTANCE_TYPE" {
  default = "t2.micro"
}
=======
***REMOVED***

variable "PATH_TO_PRIVATE_KEY" {
  default = "mykey"
***REMOVED***

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
***REMOVED***

variable "ECS_INSTANCE_TYPE" {
  default = "t2.micro"
***REMOVED***
>>>>>>> 32a340e... add_docker

variable "ECS_AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-1924770e"
    us-west-2 = "ami-56ed4936"
    eu-west-1 = "ami-c8337dbb"
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 32a340e... add_docker

# Full List: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html
