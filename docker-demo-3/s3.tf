resource "aws_s3_bucket" "terraform-state" {
  bucket = "terraform-state-a2b6219"
  acl    = "private"

  tags = {
    Name = "Terraform state"
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 32a340e... add_docker

