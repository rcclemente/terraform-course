module "vpc-prod" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.5.0"

  name = "vpc-prod"
  cidr = "10.0.0.0/16"

<<<<<<< HEAD
<<<<<<< HEAD
  azs             = ["${var.AWS_REGION}a", "${var.AWS_REGION}b", "${var.AWS_REGION}c"]
=======
  azs             = ["${var.AWS_REGION***REMOVED***a", "${var.AWS_REGION***REMOVED***b", "${var.AWS_REGION***REMOVED***c"]
>>>>>>> 986ba1c... add_demos
=======
  azs             = ["${var.AWS_REGION}a", "${var.AWS_REGION}b", "${var.AWS_REGION}c"]
>>>>>>> 78c7374... update_vars_image
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform   = "true"
    Environment = "prod"
<<<<<<< HEAD
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
}
>>>>>>> 78c7374... update_vars_image

module "vpc-dev" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.5.0"

  name = "vpc-dev"
  cidr = "10.0.0.0/16"

<<<<<<< HEAD
<<<<<<< HEAD
  azs             = ["${var.AWS_REGION}a", "${var.AWS_REGION}b", "${var.AWS_REGION}c"]
=======
  azs             = ["${var.AWS_REGION***REMOVED***a", "${var.AWS_REGION***REMOVED***b", "${var.AWS_REGION***REMOVED***c"]
>>>>>>> 986ba1c... add_demos
=======
  azs             = ["${var.AWS_REGION}a", "${var.AWS_REGION}b", "${var.AWS_REGION}c"]
>>>>>>> 78c7374... update_vars_image
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Terraform   = "true"
    Environment = "dev"
<<<<<<< HEAD
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
}
>>>>>>> 78c7374... update_vars_image

