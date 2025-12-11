resource "google_compute_network" "sandbox_vpc" {
  name                    = "sandbox-vpc"
  description             = "Global VPC for Sandbox environment (Managed by Terraform)"
  project                 = google_project.sandbox_infra.project_id
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "sandbox_subnet" {
  name          = "sandbox-subnet"
  description   = "Primary sandbox subnet in ${var.gcp_region}"
  project       = google_project.sandbox_infra.project_id
  region        = var.gcp_region
  network       = google_compute_network.sandbox_vpc.id
  ip_cidr_range = var.sandbox_subnet_cidr
}
