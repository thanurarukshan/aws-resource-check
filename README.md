# AWS Active Resources Finder

## Overview
This script retrieves and lists all active AWS resources across multiple AWS services using AWS CLI. It helps identify running instances, storage, databases, IAM users, and more.

## Features
✅ Lists all **running EC2 instances**  
✅ Lists all **S3 buckets**  
✅ Finds **all active RDS databases**  
✅ Checks **all Lambda functions**  
✅ Shows **all ECS clusters**  
✅ Lists **Elastic Load Balancers (ALB/NLB/CLB)**  
✅ Displays **all IAM users**  
✅ Retrieves **Route 53 hosted zones**  
✅ Checks **active CloudFormation stacks**  
✅ Uses **AWS Resource Group Tagging API** to list **ALL active AWS resources**  

## Prerequisites
Ensure you have the following installed and configured:

1. **AWS CLI** installed ([Installation Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html))
2. AWS CLI configured with credentials:
   ```bash
   aws configure
   ```
   Enter your **AWS Access Key, Secret Key, and Region**.
3. Bash shell (Linux/macOS) or Git Bash (Windows)

## Installation
1. Clone or download this script.
   ```bash
   git clone https://github.com/your-repo/aws-resources-finder.git
   cd aws-resources-finder
   ```
2. Make the script executable:
   ```bash
   chmod +x aws_resources.sh
   ```

## Usage
Run the script to list all active AWS resources:
```bash
./aws_resources.sh
```

## Output Example
```bash
Finding all active AWS resources...

EC2 Instances:
----------------------------------------------------
|  InstanceId   | InstanceType | PublicIpAddress  |
----------------------------------------------------
|  i-01234abcd  |  t3.micro    |  52.23.45.67     |
----------------------------------------------------

S3 Buckets:
2025-03-29 13:00:00 my-s3-bucket
...
```

## Automating with Cron (Optional)
To run this script daily and save logs, add a cron job:
```bash
crontab -e
```
Add the following line:
```bash
0 0 * * * /path/to/aws_resources.sh > /path/to/aws_resources.log 2>&1
```
## Author
Thanura Rukshan - thanurarukshan2000@gmail.com - [LinkedIn](https://www.linkedin.com/in/thanurarukshan/)

