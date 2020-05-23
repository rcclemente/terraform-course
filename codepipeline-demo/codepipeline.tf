#
# codepipeline - demo
#
resource "aws_codepipeline" "demo" {
  name     = "demo-docker-pipeline"
  role_arn = aws_iam_role.demo-codepipeline.arn

  artifact_store {
    location = aws_s3_bucket.demo-artifacts.bucket
    type     = "S3"
    encryption_key {
      id   = aws_kms_alias.demo-artifacts.arn
      type = "KMS"
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

  stage {
    name = "Source"

    action {
      name             = "Source"
      category         = "Source"
      owner            = "AWS"
      provider         = "CodeCommit"
      version          = "1"
      output_artifacts = ["demo-docker-source"]

      configuration = {
        RepositoryName = aws_codecommit_repository.demo.repository_name
        BranchName     = "master"
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

  stage {
    name = "Build"

    action {
      name             = "Build"
      category         = "Build"
      owner            = "AWS"
      provider         = "CodeBuild"
      input_artifacts  = ["demo-docker-source"]
      output_artifacts = ["demo-docker-build"]
      version          = "1"

      configuration = {
        ProjectName = aws_codebuild_project.demo.name
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

  stage {
    name = "Deploy"

    action {
      name            = "DeployToECS"
      category        = "Deploy"
      owner           = "AWS"
      provider        = "CodeDeployToECS"
      input_artifacts = ["demo-docker-build"]
      version         = "1"

      configuration = {
        ApplicationName                = aws_codedeploy_app.demo.name
        DeploymentGroupName            = aws_codedeploy_deployment_group.demo.deployment_group_name
        TaskDefinitionTemplateArtifact = "demo-docker-build"
        AppSpecTemplateArtifact        = "demo-docker-build"
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 78c7374... update_vars_image
      }
    }
  }
}
<<<<<<< HEAD
=======
      ***REMOVED***
    ***REMOVED***
  ***REMOVED***
***REMOVED***
>>>>>>> 191d763... adding_other_demos
=======
>>>>>>> 78c7374... update_vars_image


