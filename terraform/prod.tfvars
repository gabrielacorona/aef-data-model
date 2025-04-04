project = "data-analytics-pocs"
region  = "us-central1"
domain  = "example"

include_metadata_in_tfe_deployment = true

create_dataform_repositories  = true
compile_dataform_repositories = true
execute_dataform_repositories = true
create_dataform_datasets      = true
dataform_repositories         = {
  sample-repo-1 = {
    remote_repo_url = https://github.com/rachelgagnon/rgagnon-aef-dataform.git"
  }
}

create_ddl_buckets          = false
run_ddls_in_buckets         = true
create_ddl_buckets_datasets = true
ddl_buckets                 = {
  ddl-bucket-1 = {
    ddl_flavor           = "bigquery"
    bucket_name          = "data-analytics-pocs-my-sample-ddl-bucket"
    bucket_region        = "us-central1"
    bucket_project       = "data-analytics-pocs"
    ddl_project_id       = "data-analytics-pocs"
    ddl_dataset_id       = "aef_landing_sample_dataset"
    ddl_region           = "us-central1"
    ddl_data_bucket_name = "data-analytics-pocs-my-sample-data-bucket"
    ddl_connection_name  = "projects/data-analytics-pocs/locations/us-central1/connections/sample-connection"
    dataplex_lake        = "aef-sales-lake"
    dataplex_zone        = "aef-landing-sample-zone"
  }
}

create_data_buckets = false
data_buckets        = {
  data-bucket-1 = {
    name          = "data-analytics-pocs-my-sample-data-bucket"
    region        = "us-central1"
    project       = "data-analytics-pocs"
    dataplex_lake = "aef-sales-lake"
    dataplex_zone = "aef-landing-sample-zone"
    auto_discovery_of_tables = true
  }
}
