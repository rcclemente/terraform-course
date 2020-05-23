output "elb" {
  value = aws_elb.myapp-elb.dns_name
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

output "jenkins" {
  value = aws_instance.jenkins-instance.public_ip
***REMOVED***

output "myapp-repository-URL" {
  value = aws_ecr_repository.myapp.repository_url
***REMOVED***
>>>>>>> 32a340e... add_docker

