resource "google_project" "sandbox_infra" {
  name                = "Sandbox - Infra"
  project_id          = "sandbox-infra-${random_integer.suffix.result}"
  billing_account     = var.billing_account_id
  auto_create_network = false
}

resource "google_project_service" "enabled_apis" {
  for_each = toset([
    "serviceusage.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "iam.googleapis.com",
    "storage.googleapis.com",
    "compute.googleapis.com",
    "servicenetworking.googleapis.com",
    "logging.googleapis.com",
    "monitoring.googleapis.com",
    "cloudbilling.googleapis.com"
  ])

  service            = each.key
  project            = google_project.sandbox_infra.project_id
  disable_on_destroy = false
}
