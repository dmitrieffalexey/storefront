resource "google_cloudfunctions2_function" "this" {
  name                             = var.cloud_function_name
  description                      = var.cloud_function_description
  labels                           = var.labels

  build_config {
    runtime                        = var.cloud_function_runtime
    entry_point                    = var.cloud_function_entry_point

    source {
      storage_source {
        bucket                     = google_storage_bucket.this.id
        object                     = google_storage_bucket_object.this.name
      }
    }
  }

  service_config {
    min_instance_count             = var.min_instance_count
    max_instance_count             = var.max_instance_count
    timeout_seconds                = var.timeout_seconds
    environment_variables          = var.environment_variables
    ingress_settings               = var.ingress_settings
    all_traffic_on_latest_revision = var.all_traffic_on_latest_revision
  }
}