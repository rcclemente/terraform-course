# ecs ec2 role
resource "aws_iam_role" "ecs-ec2-role" {
  name               = "ecs-ec2-role"
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
>>>>>>> 32a340e... add_docker

resource "aws_iam_instance_profile" "ecs-ec2-role" {
  name = "ecs-ec2-role"
  role = aws_iam_role.ecs-ec2-role.name
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 32a340e... add_docker

resource "aws_iam_role" "ecs-consul-server-role" {
  name = "ecs-consul-server-role"
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
>>>>>>> 32a340e... add_docker

resource "aws_iam_role_policy" "ecs-ec2-role-policy" {
name   = "ecs-ec2-role-policy"
role   = aws_iam_role.ecs-ec2-role.id
policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
              "ecs:CreateCluster",
              "ecs:DeregisterContainerInstance",
              "ecs:DiscoverPollEndpoint",
              "ecs:Poll",
              "ecs:RegisterContainerInstance",
              "ecs:StartTelemetrySession",
              "ecs:Submit*",
              "ecs:StartTask",
              "ecr:GetAuthorizationToken",
              "ecr:BatchCheckLayerAvailability",
              "ecr:GetDownloadUrlForLayer",
              "ecr:BatchGetImage",
              "logs:CreateLogStream",
              "logs:PutLogEvents"
            ],
            "Resource": "*"
<<<<<<< HEAD
        },
=======
        ***REMOVED***,
>>>>>>> 32a340e... add_docker
        {
            "Effect": "Allow",
            "Action": [
                "logs:CreateLogGroup",
                "logs:CreateLogStream",
                "logs:PutLogEvents",
                "logs:DescribeLogStreams"
            ],
            "Resource": [
                "arn:aws:logs:*:*:*"
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
>>>>>>> 32a340e... add_docker

# ecs service role
resource "aws_iam_role" "ecs-service-role" {
name = "ecs-service-role"
assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ecs.amazonaws.com"
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
>>>>>>> 32a340e... add_docker

resource "aws_iam_policy_attachment" "ecs-service-attach1" {
  name       = "ecs-service-attach1"
  roles      = [aws_iam_role.ecs-service-role.name]
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceRole"
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 32a340e... add_docker

