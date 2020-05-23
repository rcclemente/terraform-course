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
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
  }
>>>>>>> 78c7374... update_vars_image

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
<<<<<<< HEAD
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
  }
>>>>>>> 78c7374... update_vars_image
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
<<<<<<< HEAD
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
=======
  }
  tags = {
    Name = "jenkins-securitygroup"
  }
}
>>>>>>> 78c7374... update_vars_image

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
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
  }
>>>>>>> 78c7374... update_vars_image

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
<<<<<<< HEAD
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
  }
>>>>>>> 78c7374... update_vars_image
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
<<<<<<< HEAD
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
=======
  }
  tags = {
    Name = "app-securitygroup"
  }
}
>>>>>>> 78c7374... update_vars_image

