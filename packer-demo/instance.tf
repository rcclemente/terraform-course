<<<<<<< HEAD
resource "aws_instance" "example" {
  ami           = var.AMI_ID
  instance_type = "t2.micro"
=======
***REMOVED***
  ami           = var.AMI_ID
***REMOVED***
>>>>>>> 191d763... adding_other_demos

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.example-instance.id]

  # the public SSH key
  key_name = aws_key_pair.mykeypair.key_name
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 191d763... adding_other_demos

