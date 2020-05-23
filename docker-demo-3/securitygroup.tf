resource "aws_security_group" "ecs-securitygroup" {
  vpc_id      = aws_vpc.main.id
  name        = "ecs"
  description = "security group for ecs"
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
>>>>>>> 32a340e... add_docker
=======
  }
>>>>>>> 78c7374... update_vars_image

  ingress {
    from_port       = 3000
    to_port         = 3000
    protocol        = "tcp"
    security_groups = [aws_security_group.myapp-elb-securitygroup.id]
<<<<<<< HEAD
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 32a340e... add_docker
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
    Name = "ecs"
  }
}
=======
  ***REMOVED***
  tags = {
    Name = "ecs"
  ***REMOVED***
***REMOVED***
>>>>>>> 32a340e... add_docker
=======
  }
  tags = {
    Name = "ecs"
  }
}
>>>>>>> 78c7374... update_vars_image

resource "aws_security_group" "myapp-elb-securitygroup" {
  vpc_id      = aws_vpc.main.id
  name        = "myapp-elb"
  description = "security group for ecs"
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
>>>>>>> 32a340e... add_docker
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
    Name = "myapp-elb"
  }
}
=======
  ***REMOVED***
  tags = {
    Name = "myapp-elb"
  ***REMOVED***
***REMOVED***
>>>>>>> 32a340e... add_docker
=======
  }
  tags = {
    Name = "myapp-elb"
  }
}
>>>>>>> 78c7374... update_vars_image

# jenkins
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
>>>>>>> 32a340e... add_docker
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
>>>>>>> 32a340e... add_docker
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
>>>>>>> 32a340e... add_docker
=======
  }
  tags = {
    Name = "jenkins-securitygroup"
  }
}
>>>>>>> 78c7374... update_vars_image

