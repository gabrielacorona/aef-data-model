terraform {
  backend "gcs" {
    bucket = "aef-terraform-bucket"
    prefix = "aef-data-model/env/dev"
  }
}
