resource "aws_security_group" "myinstance" {
  vpc_id      = aws_vpc.main.id
  name        = "myinstance"
  description = "security group for my instance"
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
>>>>>>> 986ba1c... add_demos
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
>>>>>>> 986ba1c... add_demos
=======
  }
>>>>>>> 78c7374... update_vars_image

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.elb-securitygroup.id]
<<<<<<< HEAD
<<<<<<< HEAD
  }

  tags = {
    Name = "myinstance"
  }
}
=======
  ***REMOVED***

  tags = {
    Name = "myinstance"
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }

  tags = {
    Name = "myinstance"
  }
}
>>>>>>> 78c7374... update_vars_image

resource "aws_security_group" "elb-securitygroup" {
  vpc_id      = aws_vpc.main.id
  name        = "elb"
  description = "security group for load balancer"
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
>>>>>>> 986ba1c... add_demos
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
    Name = "elb"
  }
}
=======
  ***REMOVED***
  tags = {
    Name = "elb"
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
  tags = {
    Name = "elb"
  }
}
>>>>>>> 78c7374... update_vars_image

