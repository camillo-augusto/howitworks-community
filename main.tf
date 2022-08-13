provider "google" {
    project = "terraform-348517"
    region = "europe-west2"
    zone = "europe-west2-a"
}

terraform {
  backend "gcs" {
    bucket  = "camilloaugusto-terraform"
    prefix  = "terraform/state"
  }
}

# data "google_secret_manager_secret_version" "first-password" {
#   provider = google-beta
#   project  = "terraform-348517"
#   secret   = google_secret_manager_secret.first-password.secret_id
#   version  = 1
# }

# output my_password_version {
#   value = data.google_secret_manager_secret_version.first-password_v1.version
# }

# resource "google_secret_manager_secret" "secret-basic" {
#   secret_id = "first-password"

#   labels = {
#     label = "secret-manager-label"
#   }

#   replication {
#     user_managed {
#       replicas {
#         location = "europe-west2"
#       }
#       replicas {
#         location = "europe-west8"
#       }
#     }
#   }
# }

# output "secret" {value = google_secret_manager_secret.secret-basic}







