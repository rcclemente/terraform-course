resource "aws_security_group" "allow-ssh" {
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
=======
  }
  tags = {
    Name = "allow-ssh"
  }
}
>>>>>>> 78c7374... update_vars_image
