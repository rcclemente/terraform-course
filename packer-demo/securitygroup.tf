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
>>>>>>> 191d763... adding_other_demos
=======
  }
  tags = {
    Name = "example-instance"
  }
}
>>>>>>> 78c7374... update_vars_image

