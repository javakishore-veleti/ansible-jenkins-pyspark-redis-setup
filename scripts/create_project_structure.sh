#!/bin/bash

# Define the base directory
BASE_DIR="./DevOps"

# Create the base directory
mkdir -p $BASE_DIR

# Create ansible_configs directory structure
mkdir -p $BASE_DIR/ansible_configs/inventories
mkdir -p $BASE_DIR/ansible_configs/playbooks
mkdir -p $BASE_DIR/ansible_configs/roles/jenkins/tasks
mkdir -p $BASE_DIR/ansible_configs/roles/redis/tasks

# Create terraform_configs directory structure
mkdir -p $BASE_DIR/terraform_configs

# Create files in ansible_configs
touch $BASE_DIR/ansible_configs/inventories/hosts
touch $BASE_DIR/ansible_configs/playbooks/provision_cloud_resources.yml
touch $BASE_DIR/ansible_configs/playbooks/setup_jenkins.yml
touch $BASE_DIR/ansible_configs/playbooks/setup_redis_local_dev.yml
touch $BASE_DIR/ansible_configs/playbooks/setup_redis_staging.yml
touch $BASE_DIR/ansible_configs/playbooks/setup_redis_integration_server.yml
touch $BASE_DIR/ansible_configs/playbooks/setup_redis_prod.yml
touch $BASE_DIR/ansible_configs/playbooks/setup_redis_pre_prod.yml
touch $BASE_DIR/ansible_configs/playbooks/setup_redis_partners.yml
touch $BASE_DIR/ansible_configs/roles/jenkins/tasks/main.yml
touch $BASE_DIR/ansible_configs/roles/redis/tasks/main.yml

# Create files in terraform_configs
touch $BASE_DIR/terraform_configs/main.tf
touch $BASE_DIR/terraform_configs/variables.tf
touch $BASE_DIR/terraform_configs/outputs.tf
touch $BASE_DIR/terraform_configs/terraform.tfvars

# Create README.md
touch $BASE_DIR/README.md

echo "Project structure created successfully!"
