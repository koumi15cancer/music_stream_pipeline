terraform {
  required_version = ">=1.0"
  required_providers {
      upstash = {
      source = "upstash/upstash"
    }
  }
}

provider "upstash" {
  email = var.registered_email
  api_key  = var.api_key
}

resource "upstash_kafka_cluster" "exampleCluster" {
  cluster_name = "TerraformCluster"
  region = "eu-west-1"
  multizone = false
}

resource "upstash_kafka_topic" "exampleKafkaTopic" {
  topic_name = "TerraformTopic"
  partitions = 1
  retention_time = 625135
  retention_size = 725124
  max_message_size = 829213
  cleanup_policy = "delete"
  cluster_id = upstash_kafka_cluster.exampleCluster.cluster_id
}
