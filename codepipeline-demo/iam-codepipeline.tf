resource "aws_iam_role" "demo-codepipeline" {
  name = "demo-codepipeline"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
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

data "aws_iam_policy_document" "demo-codepipeline-role-policy" {
  statement {
    effect = "Allow"
    actions = [
      "s3:*",
    ]
    resources = [
      aws_s3_bucket.demo-artifacts.arn,
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
      "codebuild:BatchGetBuilds",
      "codebuild:StartBuild",
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
      "sts:AssumeRole",
    ]
    resources = [
<<<<<<< HEAD
<<<<<<< HEAD
      "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/demo-codepipeline",
    ]
  }
=======
      "arn:aws:iam::${data.aws_caller_identity.current.account_id***REMOVED***:role/demo-codepipeline",
    ]
  ***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
      "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/demo-codepipeline",
    ]
  }
>>>>>>> 78c7374... update_vars_image
  statement {
    effect = "Allow"
    actions = [
      "kms:DescribeKey",
      "kms:GenerateDataKey*",
      "kms:Encrypt",
      "kms:ReEncrypt*",
      "kms:Decrypt",
    ]
    resources = [
      aws_kms_key.demo-artifacts.arn,
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
      "codecommit:UploadArchive",
      "codecommit:Get*",
      "codecommit:BatchGet*",
      "codecommit:Describe*",
      "codecommit:BatchDescribe*",
      "codecommit:GitPull",
    ]
    resources = [
      aws_codecommit_repository.demo.arn,
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
      "codedeploy:*",
      "ecs:*",
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

resource "aws_iam_role_policy" "demo-codepipeline" {
  name   = "codepipeline-policy"
  role   = aws_iam_role.demo-codepipeline.id
  policy = data.aws_iam_policy_document.demo-codepipeline-role-policy.json
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
}
>>>>>>> 78c7374... update_vars_image


