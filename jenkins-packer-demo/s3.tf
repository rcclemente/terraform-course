resource "aws_s3_bucket" "terraform-state" {
<<<<<<< HEAD
<<<<<<< HEAD
  bucket = "terraform-state-${random_string.random.result}"
=======
  bucket = "terraform-state-${random_string.random.result***REMOVED***"
>>>>>>> 191d763... adding_other_demos
=======
  bucket = "terraform-state-${random_string.random.result}"
>>>>>>> 78c7374... update_vars_image
  acl    = "private"

  tags = {
    Name = "Terraform state"
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

resource "random_string" "random" {
  length  = 8
  special = false
  upper   = false
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
}
>>>>>>> 78c7374... update_vars_image

