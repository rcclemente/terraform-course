# group definition
resource "aws_iam_group" "administrators" {
  name = "administrators"
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

resource "aws_iam_policy_attachment" "administrators-attach" {
  name       = "administrators-attach"
  groups     = [aws_iam_group.administrators.name]
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

# user
resource "aws_iam_user" "admin1" {
  name = "admin1"
<<<<<<< HEAD
<<<<<<< HEAD
}

resource "aws_iam_user" "admin2" {
  name = "admin2"
}
=======
***REMOVED***

resource "aws_iam_user" "admin2" {
  name = "admin2"
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}

resource "aws_iam_user" "admin2" {
  name = "admin2"
}
>>>>>>> 78c7374... update_vars_image

resource "aws_iam_group_membership" "administrators-users" {
  name = "administrators-users"
  users = [
    aws_iam_user.admin1.name,
    aws_iam_user.admin2.name,
  ]
  group = aws_iam_group.administrators.name
<<<<<<< HEAD
<<<<<<< HEAD
}

output "warning" {
  value = "WARNING: make sure you're not using the AdministratorAccess policy for other users/groups/roles. If this is the case, don't run terraform destroy, but manually unlink the created resources"
}
=======
***REMOVED***

output "warning" {
  value = "WARNING: make sure you're not using the AdministratorAccess policy for other users/groups/roles. If this is the case, don't run terraform destroy, but manually unlink the created resources"
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}

output "warning" {
  value = "WARNING: make sure you're not using the AdministratorAccess policy for other users/groups/roles. If this is the case, don't run terraform destroy, but manually unlink the created resources"
}
>>>>>>> 78c7374... update_vars_image

