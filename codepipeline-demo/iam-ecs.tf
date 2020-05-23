resource "aws_iam_role" "ecs-task-execution-role" {
  name = "ecs-task-execution-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
<<<<<<< HEAD
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF

}
=======
      ***REMOVED***,
      "Action": "sts:AssumeRole"
    ***REMOVED***
  ]
***REMOVED***
EOF

***REMOVED***
>>>>>>> 191d763... adding_other_demos

resource "aws_iam_role_policy" "ecs-task-execution-role" {
  name = "ecs-task-execution-role"
  role = aws_iam_role.ecs-task-execution-role.id

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:BatchGetImage",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "ssm:GetParameters",
        "ssm:GetParameter"
      ],
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

resource "aws_iam_role" "ecs-demo-task-role" {
  name = "ecs-demo-task-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "ecs-tasks.amazonaws.com"
<<<<<<< HEAD
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF


}
=======
      ***REMOVED***,
      "Action": "sts:AssumeRole"
    ***REMOVED***
  ]
***REMOVED***
EOF


***REMOVED***
>>>>>>> 191d763... adding_other_demos
