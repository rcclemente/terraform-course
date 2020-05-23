variable "ENV" {
<<<<<<< HEAD
}

variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "PUBLIC_SUBNETS" {
  type = list
}

variable "VPC_ID" {
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
}
=======
***REMOVED***

variable "INSTANCE_TYPE" {
  default = "t2.micro"
***REMOVED***

variable "PUBLIC_SUBNETS" {
  type = list
***REMOVED***

variable "VPC_ID" {
***REMOVED***

variable "PATH_TO_PUBLIC_KEY" {
  default = "mykey.pub"
***REMOVED***
>>>>>>> 986ba1c... add_demos

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 986ba1c... add_demos

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
<<<<<<< HEAD
  }

  owners = ["099720109477"] # Canonical
}
=======
  ***REMOVED***

  owners = ["099720109477"] # Canonical
***REMOVED***
>>>>>>> 986ba1c... add_demos

resource "aws_instance" "instance" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.INSTANCE_TYPE

  # the VPC subnet
  subnet_id = element(var.PUBLIC_SUBNETS, 0)

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name

  tags = {
<<<<<<< HEAD
    Name         = "instance-${var.ENV}"
    Environmnent = var.ENV
  }
}

resource "aws_security_group" "allow-ssh" {
  vpc_id      = var.VPC_ID
  name        = "allow-ssh-${var.ENV}"
=======
    Name         = "instance-${var.ENV***REMOVED***"
    Environmnent = var.ENV
  ***REMOVED***
***REMOVED***

resource "aws_security_group" "allow-ssh" {
  vpc_id      = var.VPC_ID
  name        = "allow-ssh-${var.ENV***REMOVED***"
>>>>>>> 986ba1c... add_demos
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
=======
  ***REMOVED***
>>>>>>> 986ba1c... add_demos

  tags = {
    Name         = "allow-ssh"
    Environmnent = var.ENV
<<<<<<< HEAD
  }
}

resource "aws_key_pair" "mykeypair" {
  key_name   = "mykeypair-${var.ENV}"
  public_key = file("${path.root}/${var.PATH_TO_PUBLIC_KEY}")
}
=======
  ***REMOVED***
***REMOVED***

resource "aws_key_pair" "mykeypair" {
  key_name   = "mykeypair-${var.ENV***REMOVED***"
  public_key = file("${path.root***REMOVED***/${var.PATH_TO_PUBLIC_KEY***REMOVED***")
***REMOVED***
>>>>>>> 986ba1c... add_demos

