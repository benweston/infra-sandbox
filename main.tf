resource "digitalocean_project" "sandbox_infra" {
  name        = "sandbox-infra"
  description = "Infrastructure as code for creating a disposable sandbox environment for testing, experimentation, and learning."
  purpose     = "Operational / Developer tooling"
  environment = "Development"
}
