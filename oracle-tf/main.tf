terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
}

provider "oci" {
  region = "us-ashburn-1"    // match this to your region
  /* region - value should match your OCI region. */
  auth                = "SecurityToken"
  config_file_profile = "learn-terraform"
}

resource "oci_core_vcn" "internal" {
  dns_label      = "internal"
  cidr_block     = "172.16.0.0/20"
  compartment_id = "<your_compartment_OCID_here>"
  /* to find compartment_id visit - https://cloud.oracle.com/identity/compartments */
  display_name   = "My internal VCN"
}

