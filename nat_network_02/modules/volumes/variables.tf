# modules/volumes/variables.tf

# Variable para la imagen de CoreOS
variable "coreos_image" {
  type        = string
  description = "Path to the CoreOS image to use as the base for all volumes"
}

# Tamaños de volumen específicos para cada nodo, en GiB
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

# Tamaños de volumen para los nodos worker, en GiB
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

# Variables adicionales para la configuración de cada nodo
variable "bootstrap" {
  type = map(string)
  description = "Configuration map for the bootstrap node"
}

variable "controlplane_1" {
  type = map(string)
  description = "Configuration map for controlplane node 1"
}

variable "controlplane_2" {
  type = map(string)
  description = "Configuration map for controlplane node 2"
}

variable "controlplane_3" {
  type = map(string)
  description = "Configuration map for controlplane node 3"
}

variable "worker_1" {
  type = map(string)
  description = "Configuration map for worker node 1"
}

variable "worker_2" {
  type = map(string)
  description = "Configuration map for worker node 2"
}

variable "worker_3" {
  type = map(string)
  description = "Configuration map for worker node 3"
}
