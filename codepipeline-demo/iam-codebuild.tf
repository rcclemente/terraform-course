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
    },
=======
    ***REMOVED***,
>>>>>>> 191d763... adding_other_demos
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
    },
=======
    ***REMOVED***,
>>>>>>> 191d763... adding_other_demos
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
    },
=======
    ***REMOVED***,
>>>>>>> 191d763... adding_other_demos
    {
      "Effect": "Allow",
      "Action": [
        "s3:*"
      ],
      "Resource": [
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
    {
      "Effect":"Allow",
      "Action": [
        "s3:List*",
        "s3:Put*",
        "s3:Get*"
      ],
      "Resource": [
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
    },
=======
    ***REMOVED***,
>>>>>>> 191d763... adding_other_demos
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
    }, 
=======
    ***REMOVED***, 
>>>>>>> 191d763... adding_other_demos
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
    }, 
=======
    ***REMOVED***, 
>>>>>>> 191d763... adding_other_demos
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
         "${aws_kms_key.demo-artifacts.arn}"
        ]
    }
  ]
}
POLICY

}
=======
         "${aws_kms_key.demo-artifacts.arn***REMOVED***"
        ]
    ***REMOVED***
  ]
***REMOVED***
POLICY

***REMOVED***
>>>>>>> 191d763... adding_other_demos

