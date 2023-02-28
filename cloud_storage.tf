resource "random_id" "bucket_state_prefix" {
  byte_length = 8
}

resource "google_storage_bucket" "terraform_state" {
  name          = "${random_id.bucket_state_prefix.hex}-bucket-tfstate"
  force_destroy = false
  location      = "US"
  storage_class = "STANDARD"
  versioning {
    enabled = true
  }
}