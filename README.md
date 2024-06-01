# Ansible Jenkins PySpark Redis Setup

This repository contains Ansible playbooks and Terraform configurations to set up Jenkins, Redis, and Spark clusters across different environments (local-dev, staging, integration-server, prod, pre-prod, partners).

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
