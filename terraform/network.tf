resource "yandex_vpc_network" "default" {
  name = "default-net"
}

resource "yandex_vpc_subnet" "default-subnet" {
  count          = 2
  name           = "subnet-${count.index}"
  v4_cidr_blocks = [var.cidrs[count.index]]
  zone           = var.zones[count.index]
  network_id     = "${yandex_vpc_network.default.id}"
}

resource "yandex_dns_zone" "d-shapoval_ru" {
  zone             = "d-shapoval.ru."
  public           = true
}

resource "yandex_dns_recordset" "proxy" {
  zone_id = yandex_dns_zone.d-shapoval_ru.id
  name    = "d-shapoval.ru."
  type    = "A"
  ttl     = 200
  data    = ["${yandex_compute_instance.server[0].network_interface.0.nat_ip_address}"]
}

resource "yandex_dns_recordset" "wordpress" {
  zone_id = yandex_dns_zone.d-shapoval_ru.id
  name    = "www"
  type    = "A"
  ttl     = 200
  data    = ["${yandex_compute_instance.server[0].network_interface.0.nat_ip_address}"]
}

resource "yandex_dns_recordset" "grafana" {
  zone_id = yandex_dns_zone.d-shapoval_ru.id
  name    = "grafana"
  type    = "A"
  ttl     = 200
  data    = ["${yandex_compute_instance.server[0].network_interface.0.nat_ip_address}"]
}

resource "yandex_dns_recordset" "prometheus" {
  zone_id = yandex_dns_zone.d-shapoval_ru.id
  name    = "prometheus"
  type    = "A"
  ttl     = 200
  data    = ["${yandex_compute_instance.server[0].network_interface.0.nat_ip_address}"]
}

resource "yandex_dns_recordset" "alertmanager" {
  zone_id = yandex_dns_zone.d-shapoval_ru.id
  name    = "alertmanager"
  type    = "A"
  ttl     = 200
  data    = ["${yandex_compute_instance.server[0].network_interface.0.nat_ip_address}"]
}

resource "yandex_dns_recordset" "gitlab" {
  zone_id = yandex_dns_zone.d-shapoval_ru.id
  name    = "gitlab"
  type    = "A"
  ttl     = 200
  data    = ["${yandex_compute_instance.server[0].network_interface.0.nat_ip_address}"]
}
