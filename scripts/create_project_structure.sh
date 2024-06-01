#!/bin/bash

# Define the base directory
BASE_DIR="./DevOps"

# Create the base directory
mkdir -p $BASE_DIR

# Create ansible_configs directory structure
mkdir -p $BASE_DIR/ansible_configs/inventories
mkdir -p $BASE_DIR/ansible_configs/playbooks/jenkins
mkdir -p $BASE_DIR/ansible_configs/playbooks/redis
mkdir -p $BASE_DIR/ansible_configs/roles/jenkins/tasks
mkdir -p $BASE_DIR/ansible_configs/roles/redis/tasks

# Create terraform_configs directory structure
mkdir -p $BASE_DIR/terraform_configs/jenkins
mkdir -p $BASE_DIR/terraform_configs/redis

# Create files in ansible_configs
touch $BASE_DIR/ansible_configs/inventories/hosts

# Jenkins playbooks
touch $BASE_DIR/ansible_configs/playbooks/jenkins/common_setup_jenkins.yml
touch $BASE_DIR/ansible_configs/playbooks/jenkins/setup_jenkins_local_dev.yml
touch $BASE_DIR/ansible_configs/playbooks/jenkins/setup_jenkins_staging.yml
touch $BASE_DIR/ansible_configs/playbooks/jenkins/setup_jenkins_integration_server.yml
touch $BASE_DIR/ansible_configs/playbooks/jenkins/setup_jenkins_prod.yml
touch $BASE_DIR/ansible_configs/playbooks/jenkins/setup_jenkins_pre_prod.yml
touch $BASE_DIR/ansible_configs/playbooks/jenkins/setup_jenkins_partners.yml

# Redis playbooks
touch $BASE_DIR/ansible_configs/playbooks/redis/common_setup_redis.yml
touch $BASE_DIR/ansible_configs/playbooks/redis/setup_redis_local_dev.yml
touch $BASE_DIR/ansible_configs/playbooks/redis/setup_redis_staging.yml
touch $BASE_DIR/ansible_configs/playbooks/redis/setup_redis_integration_server.yml
touch $BASE_DIR/ansible_configs/playbooks/redis/setup_redis_prod.yml
touch $BASE_DIR/ansible_configs/playbooks/redis/setup_redis_pre_prod.yml
touch $BASE_DIR/ansible_configs/playbooks/redis/setup_redis_partners.yml

# Role main tasks
touch $BASE_DIR/ansible_configs/roles/jenkins/tasks/main.yml
touch $BASE_DIR/ansible_configs/roles/redis/tasks/main.yml

# Create files in terraform_configs for Jenkins
touch $BASE_DIR/terraform_configs/jenkins/main.tf
touch $BASE_DIR/terraform_configs/jenkins/variables.tf
touch $BASE_DIR/terraform_configs/jenkins/outputs.tf
touch $BASE_DIR/terraform_configs/jenkins/terraform.tfvars

# Create files in terraform_configs for Redis
touch $BASE_DIR/terraform_configs/redis/main.tf
touch $BASE_DIR/terraform_configs/redis/variables.tf
touch $BASE_DIR/terraform_configs/redis/outputs.tf
touch $BASE_DIR/terraform_configs/redis/terraform.tfvars

# Create README.md
touch $BASE_DIR/README.md

echo "Project structure created successfully!"
