resource "aws_s3_bucket" "terraform-state" {
  bucket = "terraform-state-a2b6219"
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
>>>>>>> 32a340e... add_docker
=======
  }
}
>>>>>>> 78c7374... update_vars_image

