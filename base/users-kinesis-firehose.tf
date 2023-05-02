

resource "aws_kinesis_firehose_delivery_stream" "landing_users" {
  name = "landing-users${var.staging_suffix}"
  destination = "extended_s3"

  kinesis_source_configuration {
    kinesis_stream_arn = aws_kinesis_stream.landing_users.arn
    role_arn = aws_iam_role.firehose_landing_users.arn
  }

  extended_s3_configuration {
    role_arn = aws_iam_role.firehose_landing_users.arn
    bucket_arn = aws_s3_bucket.events.arn
    prefix = "${local.s3.landing_cstar_users_s3_folder}/${var.firehose_common_prefix}"
    error_output_prefix = "${local.s3.landing_cstar_users_s3_error_folder}/${var.firehose_error_prefix}"
    buffer_size = var.firehose_landing_cstar_users.buffer_size
    buffer_interval = var.firehose_landing_cstar_users.buffer_interval
    compression_format = "UNCOMPRESSED"

    data_format_conversion_configuration {
      input_format_configuration {
        deserializer {
          open_x_json_ser_de {}
        }
      }

      output_format_configuration {
        serializer {
          parquet_ser_de {}
        }
      }

      schema_configuration {
        database_name = aws_glue_catalog_table.landing_users.database_name
        role_arn = aws_iam_role.firehose_landing_users.arn
        table_name = aws_glue_catalog_table.landing_users.name
      }
    }
  }

  tags = local.tags
}
