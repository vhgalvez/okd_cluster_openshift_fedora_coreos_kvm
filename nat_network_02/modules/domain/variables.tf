# Archivo: nat_network_02/modules/domain/variables.tf

# Variable para la red
variable "network_id" {
  type        = string
  description = "value of network_id"
}

# Variables para Bootstrap
variable "bootstrap_volume_id" {
  type        = string
  description = "value of bootstrap_volume_id"
}

variable "bootstrap_ignition_id" {
  type        = string
  description = "value of bootstrap_ignition_id"
}

# Variables para Control Plane
variable "controlplane_1_volume_id" {
  type        = string
  description = "value of controlplane_1_volume_id"
}

variable "controlplane_2_volume_id" {
  type        = string
  description = "value of controlplane_2_volume_id"
}

variable "controlplane_3_volume_id" {
  type        = string
  description = "value of controlplane_3_volume_id"
}

variable "master_ignition_id" {
  type        = string
  description = "value of master_ignition_id"
}

# Mapas de configuración de cada nodo
variable "bootstrap" {
  type = map(string)
}

variable "controlplane_1" {
  type = map(string)
}

variable "controlplane_2" {
  type = map(string)
}

variable "controlplane_3" {
  type = map(string)
}

# Variables para los nodos Worker
variable "worker_ignition_id" {
  type        = string
  description = "ID del archivo Ignition para los nodos worker"
}

variable "worker_1_volume_id" {
  type        = string
  description = "ID del volumen para worker 1"
}

variable "worker_2_volume_id" {
  type        = string
  description = "ID del volumen para worker 2"
}

variable "worker_3_volume_id" {
  type        = string
  description = "ID del volumen para worker 3"
}

variable "worker_1" {
  type = map(string)
}

variable "worker_2" {
  type = map(string)
}

variable "worker_3" {
  type = map(string)
}
