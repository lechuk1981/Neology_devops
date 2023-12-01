###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
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
  description = "VPC network&subnet name"
}
variable "vm_web" {
  type    = map(any)
  default = {
    cores         = 2,
    memory        = 1,
    core_fraction = 5,
    count         = 2
  }
}

variable "vm_storage" {
  type    = map(any)
  default = {
    cores         = 2,
    memory        = 1,
    core_fraction = 5,
    count         = 2,
    size          =1,
    name         = "storage"
  }
}


variable "each_vm" {
  type = list(object({
    name = string
    cpu  = number
    ram  = number
    frac = number
  }))
  default = [
    { name = "main", cpu = 4, ram = 2, frac = 20 },
    { name = "replica", cpu = 2, ram = 4, frac = 5 }

  ]
}
variable "image_id" {
    type        = string
    default = "fd8g64rcu9fq5kpfqls0"
}
