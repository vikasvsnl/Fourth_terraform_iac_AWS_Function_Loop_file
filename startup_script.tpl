#! /bin/bash

# Install and start nginx
sudo amazon-linux-extras install -y nginx1
sudo service nginx start

# Copy website assets from S3
aws s3 cp s3://${s3_bucket_name}/website/index.html /home/ec2-user/index.html
aws s3 cp s3://${s3_bucket_name}/website/Globo_logo_Vert.png /home/ec2-user/Globo_logo_Vert.png
