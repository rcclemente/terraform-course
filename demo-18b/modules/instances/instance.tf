variable "ENV" {
<<<<<<< HEAD
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
=======
}
>>>>>>> 78c7374... update_vars_image

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
<<<<<<< HEAD
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
<<<<<<< HEAD
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
>>>>>>> 78c7374... update_vars_image

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
<<<<<<< HEAD
<<<<<<< HEAD
  }

  owners = ["099720109477"] # Canonical
}
=======
  ***REMOVED***

  owners = ["099720109477"] # Canonical
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }

  owners = ["099720109477"] # Canonical
}
>>>>>>> 78c7374... update_vars_image

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
=======
    Name         = "instance-${var.ENV}"
>>>>>>> 78c7374... update_vars_image
    Environmnent = var.ENV
  }
}

resource "aws_security_group" "allow-ssh" {
  vpc_id      = var.VPC_ID
<<<<<<< HEAD
  name        = "allow-ssh-${var.ENV***REMOVED***"
>>>>>>> 986ba1c... add_demos
=======
  name        = "allow-ssh-${var.ENV}"
>>>>>>> 78c7374... update_vars_image
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
=======
  ***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
  }
>>>>>>> 78c7374... update_vars_image

  tags = {
    Name         = "allow-ssh"
    Environmnent = var.ENV
<<<<<<< HEAD
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
=======
  }
}

resource "aws_key_pair" "mykeypair" {
  key_name   = "mykeypair-${var.ENV}"
  public_key = file("${path.root}/${var.PATH_TO_PUBLIC_KEY}")
}
>>>>>>> 78c7374... update_vars_image

