output "redis_cluster_endpoint" {
  value = aws_elasticache_cluster.redis_cluster.configuration_endpoint
}
