locals {
  ssh-keys = file("~/manage-cloud/mng-cloud-hw-1.2/yc-ssh-key/yc-hw-nat.pub")
  ssh-private-keys = file("~/manage-cloud/mng-cloud-hw-1.2/yc-ssh-key/yc-hw-nat")
}

resource "yandex_vpc_network" "develop" {
  name = var.vpc_name
}
resource "yandex_vpc_subnet" "public" {
  name           = var.public_subnet
  zone           = var.default_zone
  network_id     = yandex_vpc_network.develop.id
  v4_cidr_blocks = var.default_cidr
}