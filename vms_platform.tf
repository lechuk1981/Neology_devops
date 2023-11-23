variable "vm_web_name" {
  type = string
  default = "platform-web"
}
variable "vm_db_name" {
  type = string
  default = "platform-db"
}
variable "netology" {
  type = string
  default = "netology-develop"
}
variable "vm_web_platform_id" {
  type = string
  default = "standard-v1"
}

variable "vm_family" {
  type = string
  default = "ubuntu-2004-lts"
}

variable "vm_web_resources" {
  type = map(number)
  default = {  "memory" = 1
              "cores" = 2
              "core_fraction" = 5
  }
}
variable "vm_db_resources" {
  type = map(number)
  default = { "memory" = 2
              "cores" = 2
              "core_fraction" = 20
  }
}
variable "metadata" {
  type = tuple([number, string])
  default = [1, "ubuntu:var.vms_ssh_root_key"]
  }
