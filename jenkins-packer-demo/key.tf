resource "aws_key_pair" "mykeypair" {
  key_name   = "mykeypair"
  public_key = fileexists(var.PATH_TO_PUBLIC_KEY) ? file(var.PATH_TO_PUBLIC_KEY) : var.DUMMY_SSH_PUB_KEY
  lifecycle {
    ignore_changes = [public_key]
<<<<<<< HEAD
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
  }
}
>>>>>>> 78c7374... update_vars_image

