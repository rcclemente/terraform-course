#
# cache s3 bucket
#
resource "aws_s3_bucket" "codebuild-cache" {
<<<<<<< HEAD
  bucket = "demo-codebuild-cache-${random_string.random.result}"
  acl    = "private"
}

resource "aws_s3_bucket" "demo-artifacts" {
  bucket = "demo-artifacts-${random_string.random.result}"
=======
  bucket = "demo-codebuild-cache-${random_string.random.result***REMOVED***"
  acl    = "private"
***REMOVED***

resource "aws_s3_bucket" "demo-artifacts" {
  bucket = "demo-artifacts-${random_string.random.result***REMOVED***"
>>>>>>> 191d763... adding_other_demos
  acl    = "private"

  lifecycle_rule {
    id      = "clean-up"
    enabled = "true"

    expiration {
      days = 30
<<<<<<< HEAD
    }
  }
}
=======
    ***REMOVED***
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

