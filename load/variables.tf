variable "project" {
  type = string
}

variable "project_number" {
  type = string
  description = "Project number"
}

variable "location" {
  type = string
}

variable "zone" {
  type = string
}

variable "branch" {
  type = string
}

variable "env_suffix" {
  type = string
}

variable "cloudbuild_file" {
  type = string
  description = "File used for cloudbuild"
}
