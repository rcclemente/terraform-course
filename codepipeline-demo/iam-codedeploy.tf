resource "aws_iam_role" "demo-codedeploy" {
  name = "demo-codedeploy"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "codedeploy.amazonaws.com"
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

data "aws_iam_policy_document" "demo-codedeploy-role-policy" {
  statement {
    effect = "Allow"
    actions = [
      "ecs:DescribeServices",
      "ecs:CreateTaskSet",
      "ecs:UpdateServicePrimaryTaskSet",
      "ecs:DeleteTaskSet",
      "elasticloadbalancing:DescribeTargetGroups",
      "elasticloadbalancing:DescribeListeners",
      "elasticloadbalancing:ModifyListener",
      "elasticloadbalancing:DescribeRules",
      "elasticloadbalancing:ModifyRule",
      "lambda:InvokeFunction",
      "cloudwatch:DescribeAlarms",
      "sns:Publish",
      "s3:GetObject",
      "s3:GetObjectVersion"
    ]
    resources = [
      "*",
    ]
<<<<<<< HEAD
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
  }
>>>>>>> 78c7374... update_vars_image
  statement {
    effect = "Allow"
    actions = [
      "s3:Get*",
    ]
    resources = [
<<<<<<< HEAD
<<<<<<< HEAD
      "${aws_s3_bucket.demo-artifacts.arn}/*",
    ]
  }
=======
      "${aws_s3_bucket.demo-artifacts.arn***REMOVED***/*",
    ]
  ***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
      "${aws_s3_bucket.demo-artifacts.arn}/*",
    ]
  }
>>>>>>> 78c7374... update_vars_image
  statement {
    effect = "Allow"
    actions = [
      "kms:DescribeKey",
      "kms:Decrypt",
    ]
    resources = [
      aws_kms_key.demo-artifacts.arn
    ]
<<<<<<< HEAD
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
  }
>>>>>>> 78c7374... update_vars_image
  statement {
    effect = "Allow"
    actions = [
      "iam:PassRole"
    ]
    resources = [
      aws_iam_role.ecs-task-execution-role.arn,
      aws_iam_role.ecs-demo-task-role.arn,
    ]
    condition {
      test     = "StringLike"
      variable = "iam:PassedToService"
      values   = ["ecs-tasks.amazonaws.com"]
<<<<<<< HEAD
<<<<<<< HEAD
    }
  }
}
=======
    ***REMOVED***
  ***REMOVED***
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
    }
  }
}
>>>>>>> 78c7374... update_vars_image

resource "aws_iam_role_policy" "demo-codedeploy" {
  name   = "codedeploy-policy"
  role   = aws_iam_role.demo-codedeploy.id
  policy = data.aws_iam_policy_document.demo-codedeploy-role-policy.json
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
}
>>>>>>> 78c7374... update_vars_image


