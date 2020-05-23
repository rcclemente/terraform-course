# code build
resource "aws_codebuild_project" "demo" {
  name           = "demo-docker-build"
  description    = "demo docker build"
  build_timeout  = "30"
  service_role   = aws_iam_role.demo-codebuild.arn
  encryption_key = aws_kms_alias.demo-artifacts.arn

  artifacts {
    type = "CODEPIPELINE"
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 191d763... adding_other_demos

  #cache {
  #  type     = "S3"
  #  location = aws_s3_bucket.codebuild-cache.bucket
<<<<<<< HEAD
  #}
=======
  #***REMOVED***
>>>>>>> 191d763... adding_other_demos

  environment {
    compute_type    = "BUILD_GENERAL1_SMALL"
    image           = "aws/codebuild/docker:18.09.0"
    type            = "LINUX_CONTAINER"
    privileged_mode = true

    environment_variable {
      name  = "AWS_DEFAULT_REGION"
      value = var.AWS_REGION
<<<<<<< HEAD
    }
    environment_variable {
      name  = "AWS_ACCOUNT_ID"
      value = data.aws_caller_identity.current.account_id
    }
    environment_variable {
      name  = "IMAGE_REPO_NAME"
      value = aws_ecr_repository.demo.name
    }
  }
=======
    ***REMOVED***
    environment_variable {
      name  = "AWS_ACCOUNT_ID"
      value = data.aws_caller_identity.current.account_id
    ***REMOVED***
    environment_variable {
      name  = "IMAGE_REPO_NAME"
      value = aws_ecr_repository.demo.name
    ***REMOVED***
  ***REMOVED***
>>>>>>> 191d763... adding_other_demos

  source {
    type      = "CODEPIPELINE"
    buildspec = "buildspec.yml"
<<<<<<< HEAD
  }

  #depends_on      = [aws_s3_bucket.codebuild-cache]
}
=======
  ***REMOVED***

  #depends_on      = [aws_s3_bucket.codebuild-cache]
***REMOVED***
>>>>>>> 191d763... adding_other_demos

