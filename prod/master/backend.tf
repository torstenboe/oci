terraform {
  backend "s3" {
    bucket       = "tfstate_file"
    key      = "prod/master/terraform.tfstate"
    region   = "eu-frankfurt-1"
    endpoint = "https://oscemea005.compat.objectstorage.eu-frankfurt-1.oraclecloud.com"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_requesting_account_id  = true
    skip_get_ec2_platforms      = true
    skip_metadata_api_check     = true
    force_path_style            = true
    shared_credentials_file     = "/Users/localadmin/.oci/s3cred"
  }
}
