variable "coreos_image" {
  type        = string
  description = "CoreOS image to use"
}

variable "bootstrap_volume_size" {
  type        = number
  description = "Size of the bootstrap volume in GiB"
}

variable "controlplane_1_volume_size" {
  type        = number
  description = "Size of controlplane 1 volume in GiB"
}

variable "controlplane_2_volume_size" {
  type        = number
  description = "Size of controlplane 2 volume in GiB"
}

variable "controlplane_3_volume_size" {
  type        = number
  description = "Size of controlplane 3 volume in GiB"
}

# Variables de tamaño de volumen para los nodos worker
variable "worker_1_volume_size" {
  type        = number
  description = "Size of worker 1 volume in GiB"
}

variable "worker_2_volume_size" {
  type        = number
  description = "Size of worker 2 volume in GiB"
}

variable "worker_3_volume_size" {
  type        = number
  description = "Size of worker 3 volume in GiB"
}
