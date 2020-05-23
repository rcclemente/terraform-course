output "jenkins-ip" {
  value = [aws_instance.jenkins-instance.*.public_ip]
<<<<<<< HEAD
}

output "app-ip" {
  value = [aws_instance.app-instance.*.public_ip]
}

output "s3-bucket" {
  value = aws_s3_bucket.terraform-state.bucket
}
=======
***REMOVED***

output "app-ip" {
  value = [aws_instance.app-instance.*.public_ip]
***REMOVED***

output "s3-bucket" {
  value = aws_s3_bucket.terraform-state.bucket
***REMOVED***
>>>>>>> 191d763... adding_other_demos
