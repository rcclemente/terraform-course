#!/bin/bash
set -ex
AWS_REGION="eu-west-1"
cd jenkins-packer-demo
S3_BUCKET=`aws s3 ls --region $AWS_REGION |grep terraform-state |tail -n1 |cut -d ' ' -f3`
<<<<<<< HEAD
<<<<<<< HEAD
sed -i 's/terraform-state-xx70dpnh/'${S3_BUCKET}'/' backend.tf
sed -i 's/#//g' backend.tf
aws s3 cp s3://${S3_BUCKET}/amivar.tf amivar.tf --region $AWS_REGION
=======
sed -i 's/terraform-state-xx70dpnh/'${S3_BUCKET***REMOVED***'/' backend.tf
sed -i 's/#//g' backend.tf
aws s3 cp s3://${S3_BUCKET***REMOVED***/amivar.tf amivar.tf --region $AWS_REGION
>>>>>>> 191d763... adding_other_demos
=======
sed -i 's/terraform-state-xx70dpnh/'${S3_BUCKET}'/' backend.tf
sed -i 's/#//g' backend.tf
aws s3 cp s3://${S3_BUCKET}/amivar.tf amivar.tf --region $AWS_REGION
>>>>>>> 78c7374... update_vars_image
terraform init
terraform apply -auto-approve -var APP_INSTANCE_COUNT=1 -target aws_instance.app-instance
