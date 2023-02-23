//
variable "project_id" {
  type    = string
  default = "e-copilot-288911"
}

variable "region" {
  type    = string
  default = "us-east1"
}

variable "zone" {
  type    = string
  default = "us-east1-a"
}
// VARS
variable "cloud_function_name" {
  type    = string
}

variable "cloud_function_description" {
  type    = string
  default = "Analytical Event Streaming SaaS system that will collect, store, and process analytical events sent from e-commerce websites (via JS Tracker)."
}

variable "labels" {
  type    = map(string)
  default = {}
}

variable "cloud_function_runtime" {
  type    = string
  default = "nodejs16"
}

variable "cloud_function_entry_point" {
  type    = string
  default = "main"
}

variable "min_instance_count" {
  type    = number
  default = 1
}

variable "max_instance_count" {
  type    = number
  default = 10
}

variable "timeout_seconds" {
  type    = number
  default = 60
}

variable "environment_variables" {
  type    = map(string)
  default = {}
}

variable "ingress_settings" {
  type    = string
  default = "ALLOW_ALL"
}

variable "all_traffic_on_latest_revision" {
  type    = bool
  default = true
}

variable "bucket_name" {
  type    = string
}

variable "bucket_location" {
  type    = string
  default = "US"
}

variable "bucket_versioning" {
  type    = bool
  default = true
}

variable "bucket_storage_class" {
  type    = string
  default = "STANDARD"
}

variable "excludes" {
  type    = list(string)
  default = [
    "node_modules",
    "README.md"
  ]
}
