resource "google_storage_bucket" "image_importer" {
  name     = "${var.env_suffix}-image_importer"
  location = var.location
  project  = var.project
}

resource "google_storage_bucket" "object_ident_result_sink" {
  name     = "${var.env_suffix}-object_ident_result_sink"
  location = var.location
  project  = var.project
}
