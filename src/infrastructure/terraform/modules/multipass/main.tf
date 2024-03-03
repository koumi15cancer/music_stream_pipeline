terraform {
  required_version = ">=1.0"
  required_providers {
    multipass = {
      source = "larstobi/multipass"
      version = "1.4.2"
    }
    }
  }


resource "multipass_instance" "master_servers" {
  count     = var.master_counts
  name      = format("master-%02d", count.index + 1)
  cpus  = var.cpu_masters
  memory = var.memory_masters
  disk = var.disk_masters
  image = "jammy"

}

resource "multipass_instance" "worker_servers" {
  count     = var.worker_counts
  name      = format("worker-%02d", count.index + 1)
  cpus  = var.cpu_workers
  memory = var.memory_workers
  disk = var.disk_workers
  image = "jammy" 
}

