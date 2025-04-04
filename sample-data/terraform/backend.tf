terraform {
  backend "gcs" {
    bucket = "aef-terraform-bucket"
    prefix = "sample-data/env/dev"
  }
}
