data "template_file" "jenkins-init" {
  template = file("scripts/jenkins-init.sh")
  vars = {
    DEVICE            = var.INSTANCE_DEVICE_NAME
    JENKINS_VERSION   = var.JENKINS_VERSION
    TERRAFORM_VERSION = var.TERRAFORM_VERSION
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 191d763... adding_other_demos

data "template_cloudinit_config" "cloudinit-jenkins" {
  gzip          = false
  base64_encode = false

  part {
    content_type = "text/x-shellscript"
    content      = data.template_file.jenkins-init.rendered
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 191d763... adding_other_demos

