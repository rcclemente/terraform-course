data "http" "workstation-external-ip" {
  url = "http://ipv4.icanhazip.com"
<<<<<<< HEAD
<<<<<<< HEAD
}

locals {
  workstation-external-cidr = "${chomp(data.http.workstation-external-ip.body)}/32"
}
=======
***REMOVED***

locals {
  workstation-external-cidr = "${chomp(data.http.workstation-external-ip.body)***REMOVED***/32"
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
}

locals {
  workstation-external-cidr = "${chomp(data.http.workstation-external-ip.body)}/32"
}
>>>>>>> 78c7374... update_vars_image

