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
      "Effect": "Allow",
      "Sid": ""
    ***REMOVED***
  ]
***REMOVED***
EOF

***REMOVED***
>>>>>>> 986ba1c... add_demos

resource "aws_iam_instance_profile" "s3-mybucket-role-instanceprofile" {
  name = "s3-mybucket-role"
  role = aws_iam_role.s3-mybucket-role.name
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos

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
        }
    ]
}
EOF

}
=======
        ***REMOVED***
    ]
***REMOVED***
EOF

***REMOVED***
>>>>>>> 986ba1c... add_demos

