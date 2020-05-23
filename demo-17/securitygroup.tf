resource "aws_security_group" "app-prod" {
  vpc_id      = aws_vpc.main.id
  name        = "application - production"
  description = "security group for my app"
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

resource "aws_security_group" "allow-mariadb" {
  vpc_id      = aws_vpc.main.id
  name        = "allow-mariadb"
  description = "allow-mariadb"
  ingress {
    from_port       = 3306
    to_port         = 3306
    protocol        = "tcp"
    security_groups = [aws_security_group.app-prod.id] # allowing access from our example instance
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 986ba1c... add_demos
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    self        = true
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

