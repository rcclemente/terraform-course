resource "aws_iam_role" "jenkins-role" {
  name               = "jenkins-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
<<<<<<< HEAD
<<<<<<< HEAD
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

}
=======
      ***REMOVED***,
=======
      },
>>>>>>> 78c7374... update_vars_image
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

<<<<<<< HEAD
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
}
>>>>>>> 78c7374... update_vars_image

resource "aws_iam_instance_profile" "jenkins-role" {
  name = "jenkins-role"
  role = aws_iam_role.jenkins-role.name
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
}
>>>>>>> 78c7374... update_vars_image

resource "aws_iam_role_policy" "admin-policy" {
  name = "jenkins-admin-role-policy"
  role = aws_iam_role.jenkins-role.id

  policy = <<-EOF
  {
    "Version": "2012-10-17",
    "Statement": [
      {
        "Action": [
          "*"
        ],
        "Effect": "Allow",
        "Resource": "*"
<<<<<<< HEAD
<<<<<<< HEAD
      }
    ]
  }
  EOF
}
=======
      ***REMOVED***
=======
      }
>>>>>>> 78c7374... update_vars_image
    ]
  }
  EOF
<<<<<<< HEAD
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
}
>>>>>>> 78c7374... update_vars_image
