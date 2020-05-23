resource "aws_codedeploy_app" "demo" {
  compute_platform = "ECS"
  name             = "demo"
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 191d763... adding_other_demos

resource "aws_codedeploy_deployment_group" "demo" {
  app_name               = aws_codedeploy_app.demo.name
  deployment_config_name = "CodeDeployDefault.ECSAllAtOnce"
  deployment_group_name  = "demo"
  service_role_arn       = aws_iam_role.demo-codedeploy.arn

  auto_rollback_configuration {
    enabled = true
    events  = ["DEPLOYMENT_FAILURE"]
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 191d763... adding_other_demos

  blue_green_deployment_config {
    deployment_ready_option {
      action_on_timeout = "CONTINUE_DEPLOYMENT"
<<<<<<< HEAD
    }
=======
    ***REMOVED***
>>>>>>> 191d763... adding_other_demos

    terminate_blue_instances_on_deployment_success {
      action                           = "TERMINATE"
      termination_wait_time_in_minutes = 5
<<<<<<< HEAD
    }
  }
=======
    ***REMOVED***
  ***REMOVED***
>>>>>>> 191d763... adding_other_demos

  deployment_style {
    deployment_option = "WITH_TRAFFIC_CONTROL"
    deployment_type   = "BLUE_GREEN"
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 191d763... adding_other_demos

  ecs_service {
    cluster_name = aws_ecs_cluster.demo.name
    service_name = aws_ecs_service.demo.name
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 191d763... adding_other_demos

  load_balancer_info {
    target_group_pair_info {
      prod_traffic_route {
        listener_arns = [aws_lb_listener.demo.arn]
<<<<<<< HEAD
      }

      target_group {
        name = aws_lb_target_group.demo-blue.name
      }

      target_group {
        name = aws_lb_target_group.demo-green.name
      }
    }
  }
}
=======
      ***REMOVED***

      target_group {
        name = aws_lb_target_group.demo-blue.name
      ***REMOVED***

      target_group {
        name = aws_lb_target_group.demo-green.name
      ***REMOVED***
    ***REMOVED***
  ***REMOVED***
***REMOVED***
>>>>>>> 191d763... adding_other_demos
