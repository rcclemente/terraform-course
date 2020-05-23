<<<<<<< HEAD
resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.example.private_ip} >> private_ips.txt"
  }
}

output "ip" {
  value = aws_instance.example.public_ip
}
=======
***REMOVED***
  ami           = var.AMIS[var.AWS_REGION]
***REMOVED***
  provisioner "local-exec" {
    command = "echo ${aws_instance.example.private_ip***REMOVED*** >> private_ips.txt"
  ***REMOVED***
***REMOVED***

output "ip" {
  value = aws_instance.example.public_ip
***REMOVED***
>>>>>>> 986ba1c... add_demos

