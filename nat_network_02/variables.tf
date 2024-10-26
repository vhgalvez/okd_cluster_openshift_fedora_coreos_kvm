variable "coreos_image" {
  type        = string
  default     = "/mnt/lv_data/organized_storage/images/fedora-coreos-40.20240906.3.0-qemu.x86_64.qcow2"
  description = "CoreOS image to use"
}

variable "bootstrap" {
  type = map(string)
  default = {
    name        = "okd-bootstrap"
    description = "okd bootstrap vm"
    vcpu        = 2
    memory      = 4  # GiB
    volume_size = 50 # GiB
    address     = "192.168.150.3"
    mac         = "AA:BB:CC:10:00:00"
  }
}

variable "controlplane_1" {
  type = map(string)
  default = {
    name        = "okd-controlplane-1"
    description = "okd controlplane 1 vm"
    vcpu        = 2
    memory      = 4  # GiB
    volume_size = 50 # GiB
    address     = "192.168.150.10"
    mac         = "AA:BB:CC:20:00:00"
  }
}

variable "controlplane_2" {
  type = map(string)
  default = {
    name        = "okd-controlplane-2"
    description = "okd controlplane 2 vm"
    vcpu        = 2
    memory      = 4  # GiB
    volume_size = 50 # GiB
    address     = "192.168.150.11"
    mac         = "AA:BB:CC:20:00:01"
  }
}

variable "controlplane_3" {
  type = map(string)
  default = {
    name        = "okd-controlplane-3"
    description = "okd controlplane 3 vm"
    vcpu        = 2
    memory      = 4  # GiB
    volume_size = 50 # GiB
    address     = "192.168.150.12"
    mac         = "AA:BB:CC:20:00:02"
  }
}
# Variables para los Workers
variable "worker_1" {
  type = map(string)
  default = {
    name        = "okd-worker-1"
    description = "Nodo worker 1 del clúster OKD"
    vcpu        = 2
    memory      = 4  # GiB
    volume_size = 50 # GiB
    address     = "192.168.150.20"
    mac         = "AA:BB:CC:30:00:00"
  }
}

variable "worker_2" {
  type = map(string)
  default = {
    name        = "okd-worker-2"
    description = "Nodo worker 2 del clúster OKD"
    vcpu        = 2
    memory      = 4  # GiB
    volume_size = 50 # GiB
    address     = "192.168.150.21"
    mac         = "AA:BB:CC:30:00:01"
  }
}

variable "worker_3" {
  type = map(string)
  default = {
    name        = "okd-worker-3"
    description = "Nodo worker 3 del clúster OKD"
    vcpu        = 2
    memory      = 4  # GiB
    volume_size = 50 # GiB
    address     = "192.168.150.22"
    mac         = "AA:BB:CC:30:00:02"
  }
}
