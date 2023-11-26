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
  default = [
    1,
    "ubuntu:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCvG9zLLfJVax4kc4E0FjEkJonfM7K9LOL9t5zg5NQSj1x95LW4Sev61IhjlQWwQgPiRwtzd74bQVjoI1im3r9x90gdkOC0oWoXBqVeXIEm1x+eI9w0/IueM9MfzD2oqV9ltA9OvI4vQnPs28ojkRuSXOf4I68q8cVzQuXPncJUYB4Wq1RLelhZaHAfbn8DdKUj/pk9xFqMH2NBsI9V6MIpG4AD+UNCOORusysfHWIRmK5D8r/d+eT9iWhPH4Xmj9uuAnjd4NQy9Ex5PyLbDy1wv80wt54JgVHlvF2bAC8DTWX9LeT9UNYNcP88n7Yz4XJmRZi27KxZtseYC+cOE+pNIr46HKtGv+zPXRCPyQu72bQgA6y2IneoV+TQtccAu+RoiScV1eEN0zLHYmJS4VAhCQU9OiFoUvhxzaLRyezaDYAn1ZXDNXm/EHgQiqhgFGied/nbqxZK/zU2pwp/SEn3O+Wg9Yflde8Mlo2530XrVg+v1jvamaJOnfMsvpNPEzc= andreysopov@Mac-mini-Andrej.local"
  ]
  }
