resource "yandex_compute_instance" "web" {
  count = 2
  name = "develop-web-${count.index + 1}"
  resources {
        cores           = 2
        memory          = 1
        core_fraction = 5
  }

  boot_disk {
        initialize_params {
        image_id = "fd8g64rcu9fq5kpfqls0"
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