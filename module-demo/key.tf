resource "aws_key_pair" "mykeypair" {
  key_name   = "mykeypair"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 191d763... adding_other_demos

