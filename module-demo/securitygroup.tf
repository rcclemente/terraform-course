resource "aws_security_group" "allow-ssh" {
  vpc_id      = module.vpc.vpc_id
  name        = "allow-ssh"
  description = "security group that allows ssh and all egress traffic"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 191d763... adding_other_demos

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
<<<<<<< HEAD
  }

  tags = {
    Name = "allow-ssh"
  }
}
=======
  ***REMOVED***

  tags = {
    Name = "allow-ssh"
  ***REMOVED***
***REMOVED***
>>>>>>> 191d763... adding_other_demos

