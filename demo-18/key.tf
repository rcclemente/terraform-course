resource "aws_key_pair" "mykeypair" {
  key_name   = "mykeypair"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

