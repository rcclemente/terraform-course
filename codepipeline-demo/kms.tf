#
# kms
#
data "aws_iam_policy_document" "demo-artifacts-kms-policy" {
  policy_id = "key-default-1"
  statement {
    sid    = "Enable IAM User Permissions"
    effect = "Allow"
    principals {
      type        = "AWS"
<<<<<<< HEAD
<<<<<<< HEAD
      identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"]
    }
=======
      identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id***REMOVED***:root"]
    ***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
      identifiers = ["arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"]
    }
>>>>>>> 78c7374... update_vars_image
    actions = [
      "kms:*",
    ]
    resources = [
      "*",
    ]
<<<<<<< HEAD
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
  }
}
>>>>>>> 78c7374... update_vars_image

resource "aws_kms_key" "demo-artifacts" {
  description = "kms key for demo artifacts"
  policy      = data.aws_iam_policy_document.demo-artifacts-kms-policy.json
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
}
>>>>>>> 78c7374... update_vars_image

resource "aws_kms_alias" "demo-artifacts" {
  name          = "alias/demo-artifacts"
  target_key_id = aws_kms_key.demo-artifacts.key_id
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
}
>>>>>>> 78c7374... update_vars_image


