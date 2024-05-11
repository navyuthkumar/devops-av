#!/bin/bash

# This Script will report AWS resource usage
#############################################

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users


# List S3 Buckets
echo "Print S3 buckets"
aws s3 ls >> resource_tracker

# List EC2 instances
echo "Print EC2 Instances"
# aws ec2 describe-instances
aws ec2 describe-instances | jq ' .Reservations[].Instances[].InstanceId' >> resource_tracker


# List lambda
echo "Print Lamda functions"
aws lambda list-functions >> resource_tracker

# List IAM Users
echo "Print List of IAM Users"
aws iam list-users >> resource_tracker

