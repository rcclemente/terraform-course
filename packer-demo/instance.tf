<<<<<<< HEAD
<<<<<<< HEAD
resource "aws_instance" "example" {
  ami           = var.AMI_ID
  instance_type = "t2.micro"
=======
***REMOVED***
  ami           = var.AMI_ID
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
resource "aws_instance" "example" {
  ami           = var.AMI_ID
  instance_type = "t2.micro"
>>>>>>> 78c7374... update_vars_image

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.example-instance.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
}
>>>>>>> 78c7374... update_vars_image

