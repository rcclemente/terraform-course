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
>>>>>>> 191d763... adding_other_demos

resource "aws_iam_instance_profile" "jenkins-role" {
  name = "jenkins-role"
  role = aws_iam_role.jenkins-role.name
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 191d763... adding_other_demos

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
>>>>>>> 191d763... adding_other_demos
