module "load" {
  source = "./load/"

  project                        = var.project
  location                       = var.location
  zone                           = var.zone
  branch                         = var.branch
  env_suffix                     = var.env_suffix
  cloudbuild_file                = var.cloudbuild_file
  project_number                 = var.project_number
}