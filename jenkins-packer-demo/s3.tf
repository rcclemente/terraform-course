resource "aws_s3_bucket" "terraform-state" {
<<<<<<< HEAD
  bucket = "terraform-state-${random_string.random.result}"
=======
  bucket = "terraform-state-${random_string.random.result***REMOVED***"
>>>>>>> 191d763... adding_other_demos
  acl    = "private"

  tags = {
    Name = "Terraform state"
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 191d763... adding_other_demos

resource "random_string" "random" {
  length  = 8
  special = false
  upper   = false
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 191d763... adding_other_demos

