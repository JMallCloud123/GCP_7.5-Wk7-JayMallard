

#Chewbacca: The Force needs coordinates.
#You need this first in order to see if you can authenticate to GCP

#You need to change Project, Region, and Creds

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.8.0"
    }
  }
}


provider "google" {
  project = "theowaf-class7-5-jmallard"
  region  = "us-central1"
}

provider "local" {

}

