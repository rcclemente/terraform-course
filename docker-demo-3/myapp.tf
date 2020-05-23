# app

data "template_file" "myapp-task-definition-template" {
  template = file("templates/app.json.tpl")
  vars = {
    REPOSITORY_URL = replace(aws_ecr_repository.myapp.repository_url, "https://", "")
    APP_VERSION    = var.MYAPP_VERSION
<<<<<<< HEAD
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 32a340e... add_docker
=======
  }
}
>>>>>>> 78c7374... update_vars_image

resource "aws_ecs_task_definition" "myapp-task-definition" {
  family                = "myapp"
  container_definitions = data.template_file.myapp-task-definition-template.rendered
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 32a340e... add_docker
=======
}
>>>>>>> 78c7374... update_vars_image

resource "aws_ecs_service" "myapp-service" {
  count           = var.MYAPP_SERVICE_ENABLE
  name            = "myapp"
  cluster         = aws_ecs_cluster.example-cluster.id
  task_definition = aws_ecs_task_definition.myapp-task-definition.arn
  desired_count   = 1
  iam_role        = aws_iam_role.ecs-service-role.arn
  depends_on      = [aws_iam_policy_attachment.ecs-service-attach1]

  load_balancer {
    elb_name       = aws_elb.myapp-elb.name
    container_name = "myapp"
    container_port = 3000
<<<<<<< HEAD
<<<<<<< HEAD
  }
  lifecycle {
    ignore_changes = [task_definition]
  }
}
=======
  ***REMOVED***
  lifecycle {
    ignore_changes = [task_definition]
  ***REMOVED***
***REMOVED***
>>>>>>> 32a340e... add_docker
=======
  }
  lifecycle {
    ignore_changes = [task_definition]
  }
}
>>>>>>> 78c7374... update_vars_image

# load balancer
resource "aws_elb" "myapp-elb" {
  name = "myapp-elb"

  listener {
    instance_port     = 3000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
<<<<<<< HEAD
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 32a340e... add_docker
=======
  }
>>>>>>> 78c7374... update_vars_image

  health_check {
    healthy_threshold   = 3
    unhealthy_threshold = 3
    timeout             = 30
    target              = "HTTP:3000/"
    interval            = 60
<<<<<<< HEAD
<<<<<<< HEAD
  }
=======
  ***REMOVED***
>>>>>>> 32a340e... add_docker
=======
  }
>>>>>>> 78c7374... update_vars_image

  cross_zone_load_balancing   = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  subnets         = [aws_subnet.main-public-1.id, aws_subnet.main-public-2.id]
  security_groups = [aws_security_group.myapp-elb-securitygroup.id]

  tags = {
    Name = "myapp-elb"
<<<<<<< HEAD
<<<<<<< HEAD
  }
}
=======
  ***REMOVED***
***REMOVED***
>>>>>>> 32a340e... add_docker
=======
  }
}
>>>>>>> 78c7374... update_vars_image

