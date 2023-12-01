resource "yandex_compute_instance" "second_group" {

depends_on = [ yandex_compute_instance.web ]

  for_each = {for vm in var.each_vm : vm.name=>vm}
    name = each.key
    platform_id = "standard-v1"
    resources {
        cores           = each.value.cpu
        memory          = each.value.ram
        core_fraction = each.value.frac
    }

  boot_disk {
        initialize_params {
        image_id = var.image_id
        }
  }

  network_interface {
        subnet_id = yandex_vpc_subnet.develop.id
        nat     = true
  }

  metadata = {
        ssh-keys = local.ssh-key
  }
}


