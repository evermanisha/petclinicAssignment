#!/bin/bash
set -ex
AWS_REGION="eu-west-1"
cd infra
S3_BUCKET=`aws s3 ls --region $AWS_REGION |grep terraform-state |tail -n1 |cut -d ' ' -f3`
echo $S3_BUCKET

aws s3 cp s3://${S3_BUCKET}/amivar.tf amivar.tf --region $AWS_REGION
terraform init
terraform apply -auto-approve


#sed -i 's/terraform-state-xx70dpnh/'${S3_BUCKET}'/' backend.tf
#sed -i 's/#//g' backend.tf