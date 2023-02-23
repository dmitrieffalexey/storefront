data "archive_file" "this" {
  type        = "zip"
  output_path = "/tmp/${var.cloud_function_name}.zip"
  source_dir  = "${path.module}/src"
  excludes    = var.excludes
}