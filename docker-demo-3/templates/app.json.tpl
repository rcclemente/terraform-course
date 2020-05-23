[
  {
    "essential": true,
    "memory": 256,
    "name": "myapp",
    "cpu": 256,
<<<<<<< HEAD
<<<<<<< HEAD
    "image": "${REPOSITORY_URL}:${APP_VERSION}",
=======
    "image": "${REPOSITORY_URL***REMOVED***:${APP_VERSION***REMOVED***",
>>>>>>> 32a340e... add_docker
=======
    "image": "${REPOSITORY_URL}:${APP_VERSION}",
>>>>>>> 78c7374... update_vars_image
    "workingDirectory": "/app",
    "command": ["npm", "start"],
    "portMappings": [
        {
            "containerPort": 3000,
            "hostPort": 3000
<<<<<<< HEAD
<<<<<<< HEAD
        }
    ]
  }
=======
        ***REMOVED***
    ]
  ***REMOVED***
>>>>>>> 32a340e... add_docker
=======
        }
    ]
  }
>>>>>>> 78c7374... update_vars_image
]

