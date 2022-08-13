# resource "google_service_account" "service-account-servers" {
#   account_id   = "service-account-servers"
#   display_name = "Servers Access"
#   description = "Servers Account Service"
# }

# resource "google_project_iam_binding" "project" {
#   project = "terraform-348517"
#   role    = "roles/editor"

#   members = [
#     "user:camillogardenal@gmail.com",
#   ]
# }


# # Grourps and permissions
# module "projects_iam_bindings" {
#   source  = "terraform-google-modules/iam/google//modules/projects_iam"
#   projects = ["terraform-348517"]

#   bindings = {
#     "roles/storage.admin" = [
#       # "group:test_sa_group@lnescidev.com",
#       "user:camillogardenal@gmail.com",
#     ]

#     "roles/compute.networkAdmin" = [
#       # "group:test_sa_group@lnescidev.com",
#       "user:camillogardenal@gmail.com",
#     ]

#     "roles/compute.imageUser" = [
#       "user:camillogardenal@gmail.com",
#     ]

#     "roles/actions.Admin" = [
#       "user:camillogardenal@gmail.com",
#     ]

#       "roles/cloudtasks.admin" = [
#       "user:camillogardenal@gmail.com",
#     ]

#       "roles/compute.osLogin" = [
#       "user:camillogardenal@gmail.com",
#     ]
#   }
# }




# resource "google_project_iam_member" "firestore_owner_binding" {
#   project = <your_gcp_project_id_here>
#   role    = "roles/datastore.owner"
#   member  = "serviceAccount:${google_service_account.sa-name.email}"
# }


# resource "google_project_iam_custom_role" "my-custom-role" {
#   role_id     = "myCustomRole"
#   title       = "My Custom Role"
#   description = "A description"
#   permissions = ["iam.roles.list", "iam.roles.create", "iam.roles.delete"]
# }


# resource "google_project_iam_policy" "project" {
#   project     = "your-project-id"
#   policy_data = "${data.google_iam_policy.admin.policy_data}"
# }

# data "google_iam_policy" "admin" {
#   binding {
#     role = "roles/compute.admin"

#     members = [
#       "user:jane@example.com",
#     ]

#     condition {
#       title       = "expires_after_2019_12_31"
#       description = "Expiring at midnight of 2019-12-31"
#       expression  = "request.time < timestamp(\"2020-01-01T00:00:00Z\")"
#     }
#   }
# }


