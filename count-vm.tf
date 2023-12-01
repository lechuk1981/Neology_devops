resource "yandex_compute_instance" "web" {
  count = var.vm_web.count
  name = "develop-web-${count.index + 1}"
  resources {
        cores           = var.vm_web.cores
        memory          = var.vm_web.memory
        core_fraction   = var.vm_web.core_fraction
  }

  boot_disk {
        initialize_params {
        image_id = var.image_id
        }
  }

  network_interface {
        subnet_id = yandex_vpc_subnet.develop.id
        security_group_ids = [yandex_vpc_security_group.example.id]
        nat     = true
  }

  metadata = {
        ssh-keys = local.ssh-key
  }
}
