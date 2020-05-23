output "elb" {
  value = aws_elb.myapp-elb.dns_name
<<<<<<< HEAD
<<<<<<< HEAD
}

output "jenkins" {
  value = aws_instance.jenkins-instance.public_ip
}

output "myapp-repository-URL" {
  value = aws_ecr_repository.myapp.repository_url
}
=======
***REMOVED***
=======
}
>>>>>>> 78c7374... update_vars_image

output "jenkins" {
  value = aws_instance.jenkins-instance.public_ip
}

output "myapp-repository-URL" {
  value = aws_ecr_repository.myapp.repository_url
<<<<<<< HEAD
***REMOVED***
>>>>>>> 32a340e... add_docker
=======
}
>>>>>>> 78c7374... update_vars_image

