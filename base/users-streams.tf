
resource "aws_kinesis_stream" "landing_users" {
  name = "landing-cstar-users${var.staging_suffix}"
  shard_count = 1
  retention_period = var.landing_users_stream_retention_period

  shard_level_metrics = [
    "ReadProvisionedThroughputExceeded",
    "WriteProvisionedThroughputExceeded"]

  tags = local.tags
}
