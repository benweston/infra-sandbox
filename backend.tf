terraform {
  backend "gcs" {
    bucket = "tfstate-946483"
    prefix = "sandbox-infra/sandbox"
  }
}
