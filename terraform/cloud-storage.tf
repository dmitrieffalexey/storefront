resource "google_storage_bucket" "this" {
  location                    = var.bucket_location
  name                        = var.bucket_name
  force_destroy               = true
  uniform_bucket_level_access = true
  storage_class               = var.bucket_storage_class

  versioning {
    enabled                   = var.bucket_versioning
  }

}

resource "google_storage_bucket_object" "this" {
  name   = "${var.cloud_function_name}.${data.archive_file.this.output_sha}.zip"
  bucket = google_storage_bucket.this.id
  source = data.archive_file.this.output_path

  depends_on = [
    data.archive_file.this
  ]
}