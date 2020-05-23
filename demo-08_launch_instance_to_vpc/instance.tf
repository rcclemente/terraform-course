<<<<<<< HEAD
<<<<<<< HEAD
resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
=======
***REMOVED***
  ami           = var.AMIS[var.AWS_REGION]
***REMOVED***
>>>>>>> ccf2496... demo 01 and 08
=======
resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
>>>>>>> 78c7374... update_vars_image

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name
<<<<<<< HEAD
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
>>>>>>> ccf2496... demo 01 and 08
=======
}

output "ip" {
  value = aws_instance.example.public_ip
}
>>>>>>> 78c7374... update_vars_image
