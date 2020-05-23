resource "aws_security_group" "example-instance" {
  vpc_id      = aws_vpc.main.id
  name        = "allow-ssh"
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
  tags = {
    Name = "example-instance"
  }
}
=======
  ***REMOVED***
  tags = {
    Name = "example-instance"
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
  tags = {
    Name = "example-instance"
  }
}
>>>>>>> 78c7374... update_vars_image

resource "aws_security_group" "allow-mariadb" {
  vpc_id      = aws_vpc.main.id
  name        = "allow-mariadb"
  description = "allow-mariadb"
  ingress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [aws_security_group.example-instance.id] # allowing access from our example instance
<<<<<<< HEAD
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
>>>>>>> 78c7374... update_vars_image
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    self        = true
<<<<<<< HEAD
<<<<<<< HEAD
  }
  tags = {
    Name = "allow-mariadb"
  }
}
=======
  ***REMOVED***
  tags = {
    Name = "allow-mariadb"
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
  tags = {
    Name = "allow-mariadb"
  }
}
>>>>>>> 78c7374... update_vars_image

