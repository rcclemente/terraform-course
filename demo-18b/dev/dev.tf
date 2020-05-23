module "main-vpc" {
  source     = "../modules/vpc"
  ENV        = "dev"
  AWS_REGION = var.AWS_REGION
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

module "instances" {
  source         = "../modules/instances"
  ENV            = "dev"
  VPC_ID         = module.main-vpc.vpc_id
  PUBLIC_SUBNETS = module.main-vpc.public_subnets
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

