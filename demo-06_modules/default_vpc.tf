# these resources are added to provide the vpc_id and subnets to the consul module
# aws_default_* are resources that terraform doesn't creat, rather adopt
# See https://www.terraform.io/docs/providers/aws/r/default_vpc.html for more info

# default VPC
resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
<<<<<<< HEAD
  }
}

# default subnets
resource "aws_default_subnet" "default_az1" {
  availability_zone = "${var.AWS_REGION}a"

  tags = {
    Name = "Default subnet for ${var.AWS_REGION}a"
  }
}

resource "aws_default_subnet" "default_az2" {
  availability_zone = "${var.AWS_REGION}b"

  tags = {
    Name = "Default subnet for ${var.AWS_REGION}b"
  }
}

resource "aws_default_subnet" "default_az3" {
  availability_zone = "${var.AWS_REGION}c"

  tags = {
    Name = "Default subnet for ${var.AWS_REGION}c"
  }
}
=======
  ***REMOVED***
***REMOVED***

# default subnets
resource "aws_default_subnet" "default_az1" {
  availability_zone = "${var.AWS_REGION***REMOVED***a"

  tags = {
    Name = "Default subnet for ${var.AWS_REGION***REMOVED***a"
  ***REMOVED***
***REMOVED***

resource "aws_default_subnet" "default_az2" {
  availability_zone = "${var.AWS_REGION***REMOVED***b"

  tags = {
    Name = "Default subnet for ${var.AWS_REGION***REMOVED***b"
  ***REMOVED***
***REMOVED***

resource "aws_default_subnet" "default_az3" {
  availability_zone = "${var.AWS_REGION***REMOVED***c"

  tags = {
    Name = "Default subnet for ${var.AWS_REGION***REMOVED***c"
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos

