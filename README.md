# Ansible Jenkins PySpark Redis Setup

AJPRS is the project code and it means "Ansible Jenkins PySpark Redis Setup"

This repository contains Ansible playbooks and Terraform configurations to set up Jenkins, Redis, and Spark clusters across different environments (local-dev, staging, integration-server, prod, pre-prod, partners).

## Prerequisites

To run this project, you need to install the AWS CLI, Azure CLI, and GCP CLI. These command-line interfaces are necessary for interacting with the respective cloud services by the scripts in this repo.

This code repo provided a shell script to install all the necessary CLI tools. To run this script, open your terminal and navigate to the directory containing the script "package.json". Then, run the following command:

```bash
npm run install_cli_tools
```
## Environments and Resources

This code will set up various resources such as Jenkins, a PySpark cluster, and a Redis cache in the following environments:

- local-dev
- staging
- integration-server
- prod
- pre-prod
- partners

Please ensure you have the necessary AWS Access Keys for each of these environments before proceeding with the setup.

##  AWS Access Keys Requirement

### Generating AWS Access Keys And Updating 'input.sh'

This code repository requires AWS Access Keys for each environment mentioned above. Please ensure you have the necessary access keys before proceeding with the setup. For security reasons this code is not cerating AWS Access Key ID and Secret Keys. Instead, you need to configure them or obtain from your Cloud Administrator.

Once you have above AWS access keys then create a file by name `input.sh` and have values in the below format

The `input.sh` script exports the necessary environment variables for the cloud service configuration. These include the AWS Access Key ID, Secret Access Key, and region for each environment.

Here's an example of what the `input.sh` script might look like:

```script
#!/bin/bash

#!/bin/bash

# AWS credentials
export AWS_ACCESS_KEYS=( ["dev"]="AKIAIOSFODNN7EXAMPLE" ["test"]="AKIAI44QH8DHBEXAMPLE" ["prod"]="AKIAI44QH8DHBEXAMPLE2" )
export AWS_SECRET_KEYS=( ["dev"]="wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY" ["test"]="wJalrXUtnFEMI/K7MDENG/aPxRfiCYEXAMPLEKEY" ["prod"]="wJalrXUtnFEMI/K7MDENG/aPxRfiCYEXAMPLEKEY2" )
export AWS_REGIONS=( ["dev"]="us-west-2" ["test"]="us-east-1" ["prod"]="us-east-2" )

# Azure credentials
export AZURE_SUBSCRIPTION_IDS=( ["dev"]="your-dev-subscription-id" ["test"]="your-test-subscription-id" ["prod"]="your-prod-subscription-id" )
export AZURE_TENANT_IDS=( ["dev"]="your-dev-tenant-id" ["test"]="your-test-tenant-id" ["prod"]="your-prod-tenant-id" )
export AZURE_CLIENT_IDS=( ["dev"]="your-dev-client-id" ["test"]="your-test-client-id" ["prod"]="your-prod-client-id" )
export AZURE_CLIENT_SECRETS=( ["dev"]="your-dev-client-secret" ["test"]="your-test-client-secret" ["prod"]="your-prod-client-secret" )

# GCP credentials
export GCP_PROJECT_IDS=( ["dev"]="your-dev-project-id" ["test"]="your-test-project-id" ["prod"]="your-prod-project-id" )
export GCP_CLIENT_IDS=( ["dev"]="your-dev-client-id" ["test"]="your-test-client-id" ["prod"]="your-prod-client-id" )
export GCP_CLIENT_SECRETS=( ["dev"]="your-dev-client-secret" ["test"]="your-test-client-secret" ["prod"]="your-prod-client-secret" )
export GCP_REFRESH_TOKENS=( ["dev"]="your-dev-refresh-token" ["test"]="your-test-refresh-token" ["prod"]="your-prod-refresh-token" )

```



## This repo Directory Structure

```plaintext
ansible-jenkins-pyspark-redis-setup/
├── ansible_configs/
│   ├── inventories/
│   │   └── hosts
│   ├── playbooks/
│   │   ├── provision_cloud_resources.yml
│   │   ├── setup_jenkins.yml
│   │   ├── setup_redis_local_dev.yml
│   │   ├── setup_redis_staging.yml
│   │   ├── setup_redis_integration_server.yml
│   │   ├── setup_redis_prod.yml
│   │   ├── setup_redis_pre_prod.yml
│   │   └── setup_redis_partners.yml
│   ├── roles/
│   │   ├── jenkins/
│   │   │   └── tasks/
│   │   │       └── main.yml
│   │   └── redis/
│   │       └── tasks/
│   │           └── main.yml
├── terraform_configs/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── terraform.tfvars
└── README.md
```

## Bash Script to Create Project Structure and Files
```shell

# touch create_project_structure.sh
# chmod +x create_project_structure.sh
# create_project_structure.sh file name

#!/bin/bash

# Define the base directory
BASE_DIR="./DevOps"

# Create the base directory
# mkdir -p $BASE_DIR

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


```