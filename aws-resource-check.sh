#!/bin/bash

echo "Ì†ΩÌ¥ç Finding all active AWS resources..."

# Check EC2 Instances
echo -e "\nÌ†ΩÌ¥π EC2 Instances:"
aws ec2 describe-instances --filters "Name=instance-state-name,Values=running" --query 'Reservations[*].Instances[*].[InstanceId,InstanceType,PublicIpAddress]' --output table

# Check S3 Buckets
echo -e "\nÌ†ΩÌ¥π S3 Buckets:"
aws s3 ls

# Check RDS Databases
echo -e "\nÌ†ΩÌ¥π RDS Databases:"
aws rds describe-db-instances --query 'DBInstances[*].[DBInstanceIdentifier,Engine,DBInstanceStatus]' --output table

# Check Lambda Functions
echo -e "\nÌ†ΩÌ¥π Lambda Functions:"
aws lambda list-functions --query 'Functions[*].[FunctionName,Runtime,LastModified]' --output table

# Check ECS Clusters
echo -e "\nÌ†ΩÌ¥π ECS Clusters:"
aws ecs list-clusters --query 'clusterArns' --output table

# Check Load Balancers
echo -e "\nÌ†ΩÌ¥π Elastic Load Balancers:"
aws elbv2 describe-load-balancers --query 'LoadBalancers[*].[LoadBalancerName,DNSName,Type,State.Code]' --output table

# Check IAM Users
echo -e "\nÌ†ΩÌ¥π IAM Users:"
aws iam list-users --query 'Users[*].[UserName,UserId,CreateDate]' --output table

# Check Route 53 Hosted Zones
echo -e "\nÌ†ΩÌ¥π Route 53 Hosted Zones:"
aws route53 list-hosted-zones --query 'HostedZones[*].[Name,Id]' --output table

# Check CloudFormation Stacks
echo -e "\nÌ†ΩÌ¥π CloudFormation Stacks:"
aws cloudformation list-stacks --stack-status-filter CREATE_COMPLETE UPDATE_COMPLETE --query 'StackSummaries[*].[StackName,StackStatus]' --output table

# Use AWS Resource Groups Tagging API to List ALL Resources
echo -e "\nÌ†ΩÌ¥π All Tagged AWS Resources:"
aws resourcegroupstaggingapi get-resources --query 'ResourceTagMappingList[*].[ResourceARN]' --output table

echo -e "\n‚úÖ Active AWS resources listed successfully!"

