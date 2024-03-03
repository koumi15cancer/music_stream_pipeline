variable "master_counts" {
   description = "Registered VM masters to create"
   type  = number
}

variable "worker_counts" {
   description = "Registered VM workers to create"
   type  = number
}

variable "cpu_masters" {
   description = "CPU Configuration for masters"
   type  = number
}

variable "cpu_workers" {
   description = "CPU Configuration for workers"
   type  = number
}

variable "memory_masters" {
   description = "Memory Configuration for masters"
   type  = string
}

variable "memory_workers" {
   description = "Memory Configuration for workers"
   type  = string
}

variable "disk_masters" {
   description = "Disk Configuration for masters"
   type  = string
}

variable "disk_workers" {
   description = "Disk Configuration for workers"
   type  = string
}