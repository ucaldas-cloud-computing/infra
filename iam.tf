resource "google_service_account" "service_account_tf_cloud" {
  account_id   = "terraform-cloud"
  display_name = "Terraform Cloud"
}

resource "google_project_iam_binding" "owners" {
  project = var.project
  role    = "roles/owner"

  members = [
    "serviceAccount:${google_service_account.service_account_tf_cloud.email}",
    "user:cristian1853@gmail.com"
  ]
}
