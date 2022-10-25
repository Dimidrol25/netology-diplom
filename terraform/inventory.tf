resource "local_file" "inventory" {
  content = <<-DOC
    
    [proxy]
    d-shapoval.ru ansible_host=${yandex_compute_instance.server[0].network_interface.0.nat_ip_address} email=d-shapoval@yandex.ru domain=d-shapoval.ru ansible_user=ubuntu
    
    [db]
    db01.d-shapoval.ru ansible_host=${yandex_compute_instance.server[1].network_interface.0.nat_ip_address} ansible_user=ubuntu
    db02.d-shapoval.ru ansible_host=${yandex_compute_instance.server[2].network_interface.0.nat_ip_address} ansible_user=ubuntu
   
    [wordpress]
    app.d-shapoval.ru ansible_host=${yandex_compute_instance.server[3].network_interface.0.nat_ip_address} domain=d-shapoval.ru ansible_user=ubuntu 
    [gitlab]
    gitlab.d-shapoval.ru ansible_host=${yandex_compute_instance.server[4].network_interface.0.nat_ip_address} domain=d-shapoval.ru gitlab_external_url=http://gitlab.d-shapoval.ru/ ansible_user=ubuntu
    [runner]
    runner.d-shapoval.ru ansible_host=${yandex_compute_instance.server[5].network_interface.0.nat_ip_address} domain=d-shapoval.ru ansible_user=ubuntu
    [monitoring]
    monitoring.d-shapoval.ru ansible_host=${yandex_compute_instance.server[6].network_interface.0.nat_ip_address} domain=d-shapoval.ru ansible_user=ubuntu
    DOC

  filename = "../ansible/inventory"

  depends_on = [
    yandex_compute_instance.server[0],
    yandex_compute_instance.server[1],
    yandex_compute_instance.server[2],
    yandex_compute_instance.server[3],
    yandex_compute_instance.server[4],
    yandex_compute_instance.server[5],
    yandex_compute_instance.server[6],
  ]
}
