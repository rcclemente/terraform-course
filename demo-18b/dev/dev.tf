module "main-vpc" {
  source     = "../modules/vpc"
  ENV        = "dev"
  AWS_REGION = var.AWS_REGION
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos

module "instances" {
  source         = "../modules/instances"
  ENV            = "dev"
  VPC_ID         = module.main-vpc.vpc_id
  PUBLIC_SUBNETS = module.main-vpc.public_subnets
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos

