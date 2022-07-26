##############################
# Infra Cloud Build triggers #
##############################
resource "google_cloudbuild_trigger" "infrastructure_build_trigger" {
  project = var.project

  trigger_template {
    branch_name = var.branch
    repo_name   = "github_nichohelmut_yolo3_infra"
  }

  filename = var.cloudbuild_file
  name     = "infra-trigger"
}



##########################################
# Cloudbuild service account permissions #
##########################################
resource "google_project_iam_member" "editor_to_compute_cloud_build_sa" {
  role    = "roles/admin"
  project = var.project
  member  = "serviceAccount:${var.cloudbuild_sa}"
}