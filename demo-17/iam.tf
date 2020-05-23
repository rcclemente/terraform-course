# iam roles
resource "aws_iam_role" "app-ec2-role" {
  name               = "app-ec2-role"
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
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

resource "aws_iam_instance_profile" "app-ec2-role" {
  name = "app-ec2-role"
  role = aws_iam_role.app-ec2-role.name
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

# service
resource "aws_iam_role" "elasticbeanstalk-service-role" {
  name = "elasticbeanstalk-service-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "elasticbeanstalk.amazonaws.com"
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
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

# policies
resource "aws_iam_policy_attachment" "app-attach1" {
name       = "app-attach1"
roles      = [aws_iam_role.app-ec2-role.name]
policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkWebTier"
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

resource "aws_iam_policy_attachment" "app-attach2" {
name       = "app-attach2"
roles      = [aws_iam_role.app-ec2-role.name]
policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkMulticontainerDocker"
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

resource "aws_iam_policy_attachment" "app-attach3" {
name       = "app-attach3"
roles      = [aws_iam_role.app-ec2-role.name]
policy_arn = "arn:aws:iam::aws:policy/AWSElasticBeanstalkWorkerTier"
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

resource "aws_iam_policy_attachment" "app-attach4" {
name       = "app-attach4"
roles      = [aws_iam_role.elasticbeanstalk-service-role.name]
policy_arn = "arn:aws:iam::aws:policy/service-role/AWSElasticBeanstalkEnhancedHealth"
<<<<<<< HEAD
<<<<<<< HEAD
}
=======
***REMOVED***
>>>>>>> 986ba1c... add_demos
=======
}
>>>>>>> 78c7374... update_vars_image

