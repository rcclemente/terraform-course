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
  }
=======
  ***REMOVED***
>>>>>>> ccf2496... demo 01 and 08

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
>>>>>>> ccf2496... demo 01 and 08

