variable "yandex_cloud_id" {
  default = "b1gb43cj4e37kp6cb04i"
}

variable "yandex_folder_id" {
  default = "b1goj2vh18ld53pdi9tt"
}
variable "cidrs" {
  type = list(string)
  default = ["192.168.70.0/24", "192.168.71.0/24"]
}

variable "zones" {
  type = list(string)  
  default = ["ru-central1-a", "ru-central1-b"]
}

variable "ubuntu" {
  default = "fd8kdq6d0p8sij7h5qe3"
}

variable "vm" {
  type = list(string)
  default = ["d-shapoval.ru", "db01.d-shapoval.ru", "db02.d-shapoval.ru", "app.d-shapoval.ru", "gitlab.d-shapoval.ru", "runner.d-shapoval.ru", "monitoring.d-shapoval.ru"]
}
