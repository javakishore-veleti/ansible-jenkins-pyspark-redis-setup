provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_elasticache_cluster" "redis_cluster" {
  cluster_id           = "ajprs-redis-cluster-${terraform.workspace}"
  engine               = "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis3.2"

  tags = {
    Name = "ajprs-redis-cluster-${terraform.workspace}"
  }
}

output "redis_cluster_endpoint" {
  value = aws_elasticache_cluster.redis_cluster.configuration_endpoint
}
