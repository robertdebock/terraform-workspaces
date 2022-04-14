# Buckets must have a unique name, so generate some random string.
resource "random_string" "default" {
  length  = 6
  number  = false
  special = false
  upper   = false
}

resource "google_storage_bucket" "default" {
  name                        = "terraform-state-${random_string.default.result}"
  location                    = "EU"
  # The `force_destroy` is `false` by default, not allowing `destroy`.
  force_destroy               = true
  # Some policies may require `uniform_bucket_level_access`.
  uniform_bucket_level_access = true
}
