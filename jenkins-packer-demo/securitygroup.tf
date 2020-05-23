resource "aws_security_group" "jenkins-securitygroup" {
  vpc_id      = aws_vpc.main.id
  name        = "jenkins-securitygroup"
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
=======
  ***REMOVED***
>>>>>>> 191d763... adding_other_demos
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
<<<<<<< HEAD
  }
  tags = {
    Name = "jenkins-securitygroup"
  }
}
=======
  ***REMOVED***
  tags = {
    Name = "jenkins-securitygroup"
  ***REMOVED***
***REMOVED***
>>>>>>> 191d763... adding_other_demos

resource "aws_security_group" "app-securitygroup" {
  vpc_id      = aws_vpc.main.id
  name        = "app-securitygroup"
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
=======
  ***REMOVED***
>>>>>>> 191d763... adding_other_demos
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
<<<<<<< HEAD
  }
  tags = {
    Name = "app-securitygroup"
  }
}
=======
  ***REMOVED***
  tags = {
    Name = "app-securitygroup"
  ***REMOVED***
***REMOVED***
>>>>>>> 191d763... adding_other_demos

