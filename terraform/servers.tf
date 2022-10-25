resource "yandex_compute_instance" "server" {
  count                     = 7 
  hostname                  = var.vm[count.index]

  resources {
    cores  = 4
    memory = 8
  }

  boot_disk {
    initialize_params {
      image_id    = "${var.ubuntu}"
      type        = "network-hdd"
      size        = "30"
    }
  }

  network_interface {
    subnet_id  = "${yandex_vpc_subnet.default-subnet[0].id}"
    nat        = true
    ip_address = "192.168.70.10${count.index}"   
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}
