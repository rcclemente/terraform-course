#
# iam roles
#
resource "aws_iam_role" "demo-codebuild" {
  name = "demo-codebuild"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
<<<<<<< HEAD
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
=======
      },
>>>>>>> 78c7374... update_vars_image
      "Action": "sts:AssumeRole"
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

resource "aws_iam_role_policy" "demo-codebuild" {
  role = aws_iam_role.demo-codebuild.name

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ]
<<<<<<< HEAD
<<<<<<< HEAD
    },
=======
    ***REMOVED***,
>>>>>>> 191d763... adding_other_demos
=======
    },
>>>>>>> 78c7374... update_vars_image
    {
      "Sid": "CodeCommitPolicy",
      "Effect": "Allow",
      "Action": [
        "codecommit:GitPull"
      ],
      "Resource": [
        "*"
      ]
<<<<<<< HEAD
<<<<<<< HEAD
    },
=======
    ***REMOVED***,
>>>>>>> 191d763... adding_other_demos
=======
    },
>>>>>>> 78c7374... update_vars_image
    {
      "Effect": "Allow",
      "Action": [
        "ec2:CreateNetworkInterface",
        "ec2:DescribeDhcpOptions",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface",
        "ec2:DescribeSubnets",
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeVpcs"
      ],
      "Resource": "*"
<<<<<<< HEAD
<<<<<<< HEAD
    },
=======
    ***REMOVED***,
>>>>>>> 191d763... adding_other_demos
=======
    },
>>>>>>> 78c7374... update_vars_image
    {
      "Effect": "Allow",
      "Action": [
        "s3:*"
      ],
      "Resource": [
<<<<<<< HEAD
<<<<<<< HEAD
        "${aws_s3_bucket.codebuild-cache.arn}",
        "${aws_s3_bucket.codebuild-cache.arn}/*"
      ]
    },
=======
        "${aws_s3_bucket.codebuild-cache.arn***REMOVED***",
        "${aws_s3_bucket.codebuild-cache.arn***REMOVED***/*"
      ]
    ***REMOVED***,
>>>>>>> 191d763... adding_other_demos
=======
        "${aws_s3_bucket.codebuild-cache.arn}",
        "${aws_s3_bucket.codebuild-cache.arn}/*"
      ]
    },
>>>>>>> 78c7374... update_vars_image
    {
      "Effect":"Allow",
      "Action": [
        "s3:List*",
        "s3:Put*",
        "s3:Get*"
      ],
      "Resource": [
<<<<<<< HEAD
<<<<<<< HEAD
        "${aws_s3_bucket.demo-artifacts.arn}",
        "${aws_s3_bucket.demo-artifacts.arn}/*"
      ]
    },
=======
        "${aws_s3_bucket.demo-artifacts.arn***REMOVED***",
        "${aws_s3_bucket.demo-artifacts.arn***REMOVED***/*"
      ]
    ***REMOVED***,
>>>>>>> 191d763... adding_other_demos
=======
        "${aws_s3_bucket.demo-artifacts.arn}",
        "${aws_s3_bucket.demo-artifacts.arn}/*"
      ]
    },
>>>>>>> 78c7374... update_vars_image
    {
      "Sid": "ECRPushPolicy",
      "Effect": "Allow",
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetRepositoryPolicy",
        "ecr:DescribeRepositories",
        "ecr:ListImages",
        "ecr:DescribeImages",
        "ecr:BatchGetImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload",
        "ecr:PutImage"
      ],
      "Resource": [
        "*"
      ]
<<<<<<< HEAD
<<<<<<< HEAD
    },
=======
    ***REMOVED***,
>>>>>>> 191d763... adding_other_demos
=======
    },
>>>>>>> 78c7374... update_vars_image
    {
      "Sid": "ECRAuthPolicy",
      "Effect": "Allow",
      "Action": [
        "ecr:GetAuthorizationToken"
      ],
      "Resource": [
        "*"
      ]
<<<<<<< HEAD
<<<<<<< HEAD
    }, 
=======
    ***REMOVED***, 
>>>>>>> 191d763... adding_other_demos
=======
    }, 
>>>>>>> 78c7374... update_vars_image
    {
      "Sid": "ECS",
      "Effect": "Allow",
      "Action": [
        "ecs:List*",
        "ecs:Describe*"
      ],
      "Resource": [
        "*"
      ]
<<<<<<< HEAD
<<<<<<< HEAD
    }, 
=======
    ***REMOVED***, 
>>>>>>> 191d763... adding_other_demos
=======
    }, 
>>>>>>> 78c7374... update_vars_image
    {
      "Effect": "Allow",
      "Action": [
         "kms:DescribeKey",
         "kms:GenerateDataKey*",
         "kms:Encrypt",
         "kms:ReEncrypt*",
         "kms:Decrypt"
        ],
      "Resource": [
<<<<<<< HEAD
<<<<<<< HEAD
         "${aws_kms_key.demo-artifacts.arn}"
        ]
    }
  ]
}
POLICY

}
=======
         "${aws_kms_key.demo-artifacts.arn***REMOVED***"
=======
         "${aws_kms_key.demo-artifacts.arn}"
>>>>>>> 78c7374... update_vars_image
        ]
    }
  ]
}
POLICY

<<<<<<< HEAD
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
}
>>>>>>> 78c7374... update_vars_image

