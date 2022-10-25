output "internal_ip_address_d-shapoval_ru" {
  value = "${yandex_compute_instance.server[0].network_interface.0.ip_address}"
}

output "external_ip_address_d-shapoval_ru" {
  value = "${yandex_compute_instance.server[0].network_interface.0.nat_ip_address}"
}

output "internal_ip_address_db01_d-shapoval_ru" {
  value = "${yandex_compute_instance.server[1].network_interface.0.ip_address}"
}

output "external_ip_address_db01_d-shapoval_ru" {
  value = "${yandex_compute_instance.server[1].network_interface.0.nat_ip_address}"
}

output "internal_ip_address_db02_d-shapoval_ru" {
  value = "${yandex_compute_instance.server[2].network_interface.0.ip_address}"
}

output "external_ip_address_db02_d-shapoval_ru" {
  value = "${yandex_compute_instance.server[2].network_interface.0.nat_ip_address}"
}

output "internal_ip_address_app_d-shapoval_ru" {
  value = "${yandex_compute_instance.server[3].network_interface.0.ip_address}"
}

output "external_ip_address_app_d-shapoval_ru" {
  value = "${yandex_compute_instance.server[3].network_interface.0.nat_ip_address}"
}

output "internal_ip_address_gitlab_d-shapoval_ru" {
  value = "${yandex_compute_instance.server[4].network_interface.0.ip_address}"
}

output "external_ip_address_gitlab_d-shapoval_ru" {
  value = "${yandex_compute_instance.server[4].network_interface.0.nat_ip_address}"
}

output "internal_ip_address_runner_d-shapoval_ru" {
  value = "${yandex_compute_instance.server[5].network_interface.0.ip_address}"
}

output "external_ip_address_runner_d-shapoval_ru" {
  value = "${yandex_compute_instance.server[5].network_interface.0.nat_ip_address}"
}

output "internal_ip_address_monitoring_d-shapoval_ru" {
  value = "${yandex_compute_instance.server[6].network_interface.0.ip_address}"
}

output "external_ip_address_monitoring_d-shapoval_ru" {
  value = "${yandex_compute_instance.server[6].network_interface.0.nat_ip_address}"
}
