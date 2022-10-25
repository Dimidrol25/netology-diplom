terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "s3-diplom-d"
    region     = "ru-central1-a"
    key        = "terraform.tfstate"
    access_key = "YCAJEA49yBCOmioosQTYY_-sZ"
    secret_key = "YCO5UsqLjNTWFncLEm_ySxLNfD5wWnSzamjps71O"

    skip_region_validation      = true
    skip_credentials_validation = true
 }

  required_version = ">= 0.78"
}

provider yandex {
  service_account_key_file = "/root/key.json"
  cloud_id                 = "${var.yandex_cloud_id}"
  folder_id                = "${var.yandex_folder_id}"
  zone                     = "ru-central1-a"
}
