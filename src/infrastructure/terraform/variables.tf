variable "project" {
  description = "Your GCP Project ID"
  type        = string
}

variable "region" {
  description = "Your project region"
  default     = "us-central1"
  type        = string
}

variable "zone" {
  description = "Your project zone"
  default     = "us-central1-a"
  type        = string
}

variable "storage_class" {
  description = "Storage class type for your bucket"
  default     = "STANDARD"
  type        = string
}

variable "vm_image" {
  description = "Image for you VM"
  default     = "ubuntu-os-cloud/ubuntu-2004-lts"
  type        = string
}

variable "network" {
  description = "Network for your instance/cluster"
  default     = "default"
  type        = string
}

variable "stg_bq_dataset" {
  description = "Storage class type for your bucket. Check official docs for more info."
  default     = "streamify_stg"
  type        = string
}

variable "prod_bq_dataset" {
  description = "Storage class type for your bucket. Check official docs for more info."
  default     = "streamify_prod"
  type        = string
}

variable "bucket" {
  description = "The name of your bucket. This should be unique across GCP"
  type        = string 
}

 

variable "infiscal_token" {
   description = "Infiscal service token"
   type  = string
    sensitive = true
}


variable "upstash_token" {
   description = "Supbase service token"
   default = "UPSTASH_MUSIC_STREAM"
   type  = string

}

variable "registered_email" {
   description = "Registered Email"
   type  = string

}

// Multipass setup
/* 
variable "master_counts" {
   description = "Registered VM master to create"
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

 */


