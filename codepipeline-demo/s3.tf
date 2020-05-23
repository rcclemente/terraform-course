#
# cache s3 bucket
#
resource "aws_s3_bucket" "codebuild-cache" {
<<<<<<< HEAD
<<<<<<< HEAD
  bucket = "demo-codebuild-cache-${random_string.random.result}"
  acl    = "private"
}

resource "aws_s3_bucket" "demo-artifacts" {
  bucket = "demo-artifacts-${random_string.random.result}"
=======
  bucket = "demo-codebuild-cache-${random_string.random.result***REMOVED***"
=======
  bucket = "demo-codebuild-cache-${random_string.random.result}"
>>>>>>> 78c7374... update_vars_image
  acl    = "private"
}

resource "aws_s3_bucket" "demo-artifacts" {
<<<<<<< HEAD
  bucket = "demo-artifacts-${random_string.random.result***REMOVED***"
>>>>>>> 191d763... adding_other_demos
=======
  bucket = "demo-artifacts-${random_string.random.result}"
>>>>>>> 78c7374... update_vars_image
  acl    = "private"

  lifecycle_rule {
    id      = "clean-up"
    enabled = "true"

    expiration {
      days = 30
<<<<<<< HEAD
<<<<<<< HEAD
    }
  }
}
=======
    ***REMOVED***
  ***REMOVED***
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
    }
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

