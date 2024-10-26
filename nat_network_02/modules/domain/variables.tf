variable "network_id" {
  type        = string
  description = "value of network_id"
}

variable "bootstrap_volume_id" {
  type        = string
  description = "value of bootstrap_volume_id"
}

variable "bootstrap_ignition_id" {
  type        = string
  description = "value of bootstrap_ignition_id"
}

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

variable "worker_ignition_id" {
  type        = string
  description = "ID del archivo Ignition para los nodos worker"
}

# Variables para los volúmenes de los Workers
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