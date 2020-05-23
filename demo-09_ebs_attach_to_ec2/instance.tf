<<<<<<< HEAD
resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
=======
***REMOVED***
  ami           = var.AMIS[var.AWS_REGION]
***REMOVED***
>>>>>>> 986ba1c... add_demos

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos

resource "aws_ebs_volume" "ebs-volume-1" {
  availability_zone = "us-east-1a"
  size              = 20
  type              = "gp2"
  tags = {
    Name = "extra volume data"
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 986ba1c... add_demos

resource "aws_volume_attachment" "ebs-volume-1-attachment" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.ebs-volume-1.id
  instance_id = aws_instance.example.id
<<<<<<< HEAD
}

output "ip" {
  value = aws_instance.example.public_ip
}
=======
***REMOVED***

output "ip" {
  value = aws_instance.example.public_ip
***REMOVED***
>>>>>>> 986ba1c... add_demos
