output "jenkins-ip" {
  value = [aws_instance.jenkins-instance.*.public_ip]
<<<<<<< HEAD
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
=======
}
>>>>>>> 78c7374... update_vars_image

output "app-ip" {
  value = [aws_instance.app-instance.*.public_ip]
}

output "s3-bucket" {
  value = aws_s3_bucket.terraform-state.bucket
<<<<<<< HEAD
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
}
>>>>>>> 78c7374... update_vars_image
