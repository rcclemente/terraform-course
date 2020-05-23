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
>>>>>>> 32a340e... add_docker
=======
}
>>>>>>> 78c7374... update_vars_image

resource "aws_iam_instance_profile" "ecs-ec2-role" {
  name = "ecs-ec2-role"
  role = aws_iam_role.ecs-ec2-role.name
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 32a340e... add_docker
=======
}
>>>>>>> 78c7374... update_vars_image

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
>>>>>>> 32a340e... add_docker
=======
}
>>>>>>> 78c7374... update_vars_image

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
<<<<<<< HEAD
        },
=======
        ***REMOVED***,
>>>>>>> 32a340e... add_docker
=======
        },
>>>>>>> 78c7374... update_vars_image
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
>>>>>>> 32a340e... add_docker
=======
}
>>>>>>> 78c7374... update_vars_image

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
>>>>>>> 32a340e... add_docker
=======
}
>>>>>>> 78c7374... update_vars_image

resource "aws_iam_policy_attachment" "ecs-service-attach1" {
  name       = "ecs-service-attach1"
  roles      = [aws_iam_role.ecs-service-role.name]
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceRole"
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 32a340e... add_docker
=======
}
>>>>>>> 78c7374... update_vars_image

