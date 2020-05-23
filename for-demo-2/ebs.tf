
resource "aws_ebs_volume" "example" {
  availability_zone = "eu-west-1a"
  size              = 8

<<<<<<< HEAD
  tags = {for k, v in merge({ Name = "Myvolume" }, var.project_tags): k => lower(v)}
}
=======
  tags = {for k, v in merge({ Name = "Myvolume" ***REMOVED***, var.project_tags): k => lower(v)***REMOVED***
***REMOVED***
>>>>>>> 191d763... adding_other_demos
