#!/bin/bash
set -ex
SERVICE_NAME=$1
IMAGE_URI="$AWS_ACCOUNT_ID.dkr.ecr.$AWS_DEFAULT_REGION.amazonaws.com/$IMAGE_REPO_NAME:$CODEBUILD_RESOLVED_SOURCE_VERSION"
<<<<<<< HEAD
<<<<<<< HEAD
TASKDEF_NAME=$(aws ecs list-task-definitions |jq --raw-output '.taskDefinitionArns[] | select(contains("'${SERVICE_NAME}'"))' | tail -n1)
=======
TASKDEF_NAME=$(aws ecs list-task-definitions |jq --raw-output '.taskDefinitionArns[] | select(contains("'${SERVICE_NAME***REMOVED***'"))' | tail -n1)
>>>>>>> 191d763... adding_other_demos
=======
TASKDEF_NAME=$(aws ecs list-task-definitions |jq --raw-output '.taskDefinitionArns[] | select(contains("'${SERVICE_NAME}'"))' | tail -n1)
>>>>>>> 78c7374... update_vars_image
CURRENT_TASKDEF=`aws ecs describe-task-definition --task-definition $TASKDEF_NAME`
CURRENT_TASKDEF_CONTAINERDEF=`echo $CURRENT_TASKDEF| jq --raw-output ".taskDefinition.containerDefinitions"`
TASKDEF_ROLE_ARN=`echo $CURRENT_TASKDEF| jq --raw-output ".taskDefinition.taskRoleArn"`
EXECUTION_ROLE_ARN=`echo $CURRENT_TASKDEF| jq --raw-output ".taskDefinition.executionRoleArn"`
<<<<<<< HEAD
<<<<<<< HEAD
TASKDEF=`echo $CURRENT_TASKDEF_CONTAINERDEF | jq ' [ .[] |  .image = "'${IMAGE_URI}'" ]'`
=======
TASKDEF=`echo $CURRENT_TASKDEF_CONTAINERDEF | jq ' [ .[] |  .image = "'${IMAGE_URI***REMOVED***'" ]'`
>>>>>>> 191d763... adding_other_demos
=======
TASKDEF=`echo $CURRENT_TASKDEF_CONTAINERDEF | jq ' [ .[] |  .image = "'${IMAGE_URI}'" ]'`
>>>>>>> 78c7374... update_vars_image
CPU=$(echo $CURRENT_TASKDEF |jq -r '.taskDefinition.cpu')
MEMORY=$(echo $CURRENT_TASKDEF |jq -r '.taskDefinition.memory')
NETWORK_MODE=$(echo $CURRENT_TASKDEF |jq -r '.taskDefinition.networkMode')
REQUIRES_COMPATIBILITIES=$(echo $CURRENT_TASKDEF |jq '.taskDefinition.requiresCompatibilities[]' | tr '\n' ',' | sed 's/.$//')
<<<<<<< HEAD
<<<<<<< HEAD
echo '{"family": "'${SERVICE_NAME}'", "taskRoleArn": "'${TASKDEF_ROLE_ARN}'", "executionRoleArn": "'${EXECUTION_ROLE_ARN}'", "containerDefinitions": '$TASKDEF', "cpu": "'$CPU'", "memory": "'$MEMORY'", "requiresCompatibilities": ['$REQUIRES_COMPATIBILITIES'], "networkMode": "'${NETWORK_MODE}'" }' > taskdef.json
=======
echo '{"family": "'${SERVICE_NAME***REMOVED***'", "taskRoleArn": "'${TASKDEF_ROLE_ARN***REMOVED***'", "executionRoleArn": "'${EXECUTION_ROLE_ARN***REMOVED***'", "containerDefinitions": '$TASKDEF', "cpu": "'$CPU'", "memory": "'$MEMORY'", "requiresCompatibilities": ['$REQUIRES_COMPATIBILITIES'], "networkMode": "'${NETWORK_MODE***REMOVED***'" ***REMOVED***' > taskdef.json
>>>>>>> 191d763... adding_other_demos
=======
echo '{"family": "'${SERVICE_NAME}'", "taskRoleArn": "'${TASKDEF_ROLE_ARN}'", "executionRoleArn": "'${EXECUTION_ROLE_ARN}'", "containerDefinitions": '$TASKDEF', "cpu": "'$CPU'", "memory": "'$MEMORY'", "requiresCompatibilities": ['$REQUIRES_COMPATIBILITIES'], "networkMode": "'${NETWORK_MODE}'" }' > taskdef.json
>>>>>>> 78c7374... update_vars_image
#aws ecs register-task-definition --cli-input-json file://task-def-template.json.new > task-def-template.json.out
#NEW_TASKDEF_ARN=`cat task-def-template.json.out |jq -r '.taskDefinition.taskDefinitionArn'`
