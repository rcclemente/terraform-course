data "aws_ip_ranges" "us_ec2" {
  regions  = ["us-east-1"]
  services = ["ec2"]
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos

resource "aws_security_group" "from_us" {
  name = "from_us"
  description = "terraform"

  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    # cidr_blocks = data.aws_ip_ranges.us_ec2.cidr_blocks
    cidr_blocks = slice(data.aws_ip_ranges.us_ec2.cidr_blocks, 0, 20)
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 986ba1c... add_demos

  tags = {
    CreateDate = data.aws_ip_ranges.us_ec2.create_date
    SyncToken  = data.aws_ip_ranges.us_ec2.sync_token
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos

