###cloud vars
variable "token" {
  type        = string
  description = "Token"
}
variable "cloud_id" {
  type        = string
  description = "ID"
}

variable "folder_id" {
  type        = string
  description = "Folder"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


####ssh vars
#
#variable "vms_ssh_root_key" {
#  type        = string
#  default     = "ubuntu:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCvG9zLLfJVax4kc4E0FjEkJonfM7K9LOL9t5zg5NQSj1x95LW4Sev61IhjlQWwQgPiRwtzd74bQVjoI1im3r9x90gdkOC0oWoXBqVeXIEm1x+eI9w0/IueM9MfzD2oqV9ltA9OvI4vQnPs28ojkRuSXOf4I68q8cVzQuXPncJUYB4Wq1RLelhZaHAfbn8DdKUj/pk9xFqMH2NBsI9V6MIpG4AD+UNCOORusysfHWIRmK5D8r/d+eT9iWhPH4Xmj9uuAnjd4NQy9Ex5PyLbDy1wv80wt54JgVHlvF2bAC8DTWX9LeT9UNYNcP88n7Yz4XJmRZi27KxZtseYC+cOE+pNIr46HKtGv+zPXRCPyQu72bQgA6y2IneoV+TQtccAu+RoiScV1eEN0zLHYmJS4VAhCQU9OiFoUvhxzaLRyezaDYAn1ZXDNXm/EHgQiqhgFGied/nbqxZK/zU2pwp/SEn3O+Wg9Yflde8Mlo2530XrVg+v1jvamaJOnfMsvpNPEzc= andreysopov@Mac-mini-Andrej.local"
# # default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIM3rigd4Mfq4nq6i7jTViLm5xip+Nxhh6Ep4XiQyp4Py andreysopov@Mac-mini-Andrej.local"
#  description = "ssh-keygen -t ed25519"
#}
