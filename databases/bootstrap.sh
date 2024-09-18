#!/bin/bash
component=$1
environment=$2 #dont use env here, it is reserved in linux
yum install python3.11-devel python3.11-pip -y
pip3.11 install ansible cotocore boto3
ansible-pull -U https://github.com/udaydevops-lab/roboshop-ansible-roles-tf.git -e component=$component -e env=$environment main-tf.yaml