variable "ENV" {
<<<<<<< HEAD
}

variable "AWS_REGION" {
}
=======
***REMOVED***

variable "AWS_REGION" {
***REMOVED***
>>>>>>> 986ba1c... add_demos

module "main-vpc" {
  source = "terraform-aws-modules/vpc/aws"

<<<<<<< HEAD
  name = "vpc-${var.ENV}"
  cidr = "10.0.0.0/16"

  azs             = ["${var.AWS_REGION}a", "${var.AWS_REGION}b", "${var.AWS_REGION}c"]
=======
  name = "vpc-${var.ENV***REMOVED***"
  cidr = "10.0.0.0/16"

  azs             = ["${var.AWS_REGION***REMOVED***a", "${var.AWS_REGION***REMOVED***b", "${var.AWS_REGION***REMOVED***c"]
>>>>>>> 986ba1c... add_demos
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform   = "true"
    Environment = var.ENV
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos

output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.main-vpc.vpc_id
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos

output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.main-vpc.private_subnets
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos

output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.main-vpc.public_subnets
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos

