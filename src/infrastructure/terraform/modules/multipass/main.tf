terraform {
  required_version = ">=1.0"
  required_providers {
    multipass = {
      source = "larstobi/multipass"
      version = "1.4.2"
    }
    }
  }

resource "multipass_instance" "servers" {
  count     = var.vm_counts
  name      = format("node-%02d", count.index + 1)
  //name  = "instance-1234"
  cpus  = 2
  image = "jammy"
}

