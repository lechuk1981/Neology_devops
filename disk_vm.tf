resource "yandex_compute_disk" "storage" {
  count   = 3
  name  = "disk-${count.index + 1}"
  size  = 1
}


resource "yandex_compute_instance" "storage" {
  name = var.vm_storage.name
  resources {
        cores           = var.vm_storage.cores
        memory          = var.vm_storage.memory
        core_fraction   = var.vm_storage.core_fraction
  }


  boot_disk {
        initialize_params {
        image_id = var.image_id
        }
  }

  dynamic "secondary_disk" {
   for_each = "${yandex_compute_disk.storage.*.id}"
   content {
        disk_id = secondary_disk.key
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
