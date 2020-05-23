resource "aws_security_group" "allow-ssh-prod" {
  vpc_id      = module.vpc-prod.vpc_id
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
>>>>>>> 986ba1c... add_demos

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
>>>>>>> 986ba1c... add_demos

resource "aws_security_group" "allow-ssh-dev" {
  vpc_id      = module.vpc-dev.vpc_id
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
>>>>>>> 986ba1c... add_demos

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
>>>>>>> 986ba1c... add_demos

