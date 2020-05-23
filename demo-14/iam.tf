resource "aws_iam_role" "s3-mybucket-role" {
  name               = "s3-mybucket-role"
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
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

resource "aws_iam_instance_profile" "s3-mybucket-role-instanceprofile" {
  name = "s3-mybucket-role"
  role = aws_iam_role.s3-mybucket-role.name
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

resource "aws_iam_role_policy" "s3-mybucket-role-policy" {
  name = "s3-mybucket-role-policy"
  role = aws_iam_role.s3-mybucket-role.id
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
              "s3:*"
            ],
            "Resource": [
              "arn:aws:s3:::mybucket-c29df1",
              "arn:aws:s3:::mybucket-c29df1/*"
            ]
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
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

