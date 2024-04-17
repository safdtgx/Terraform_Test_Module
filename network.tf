resource "yandex_vpc_network" "this" {
  name = "${var.network_name}-${var.stand}"
}

resource "yandex_vpc_subnet" "this" {
  name           = var.zone
  zone           = var.zone
  network_id     = yandex_vpc_network.this.id
  v4_cidr_blocks = var.cidr_blocks
}

resource "yandex_vpc_address" "this" {
  name = "external_ipv4"

  external_ipv4_address {
    zone_id = var.zone
  }
}
