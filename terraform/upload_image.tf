resource "yandex_storage_object" "it-joke-cat-1" {
  access_key = yandex_iam_service_account_static_access_key.sa-static-key.access_key
  secret_key = yandex_iam_service_account_static_access_key.sa-static-key.secret_key
  bucket = local.bucket_name
  key    = "it-joke-cat-1.jpeg"
  source = "~/manage-cloud/mng-cloud-hw-1.2/img/it-joke-cat-1.jpeg"
  acl = "public-read"
  depends_on = [yandex_storage_bucket.mxssclxck]
}