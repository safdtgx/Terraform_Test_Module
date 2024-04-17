resource "yandex_compute_instance" "this" {
  count = var.vm_count

  name        = "instance-${count.index}"
  platform_id = var.platform
  zone        = var.zone

  resources {
    cores  = var.vm_cores_count
    memory = var.vm_memory
  }

  boot_disk {
    initialize_params {
      image_id = "fd82tb3u07rkdkfte3dn"
      size = 10
    }
  }

  network_interface {
    subnet_id      = yandex_vpc_subnet.this.id
    nat            = true
    nat_ip_address = yandex_vpc_address.this.external_ipv4_address.0.address
  }

  metadata = {
    ssh-keys = "yc-user:${file("~/.ssh/id_rsa.pub")}"
  }
}
