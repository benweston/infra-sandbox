terraform {
  backend "gcs" {
    bucket = "tfstate-393781"
    prefix = "sandbox-infra/sandbox/"
  }
}
