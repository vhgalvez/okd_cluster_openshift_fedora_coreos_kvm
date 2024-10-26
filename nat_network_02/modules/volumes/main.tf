# modules/volumes/main.tf
# Definición del volumen base de Fedora CoreOS

resource "libvirt_volume" "okd_bootstrap" {
  name           = "okd_bootstrap.qcow2"
  pool           = "default"
  size           = var.bootstrap.volume_size * 1073741824
  base_volume_id = libvirt_volume.fedora_coreos.id
}

resource "libvirt_volume" "okd_controlplane_1" {
  name           = "okd_controlplane_1.qcow2"
  pool           = "default"
  size           = var.controlplane_1.volume_size * 1073741824
  base_volume_id = libvirt_volume.fedora_coreos.id
}

resource "libvirt_volume" "okd_controlplane_2" {
  name           = "okd_controlplane_2.qcow2"
  pool           = "default"
  size           = var.controlplane_2.volume_size * 1073741824
  base_volume_id = libvirt_volume.fedora_coreos.id
}

resource "libvirt_volume" "okd_controlplane_3" {
  name           = "okd_controlplane_3.qcow2"
  pool           = "default"
  size           = var.controlplane_3.volume_size * 1073741824
  base_volume_id = libvirt_volume.fedora_coreos.id
}

resource "libvirt_volume" "worker_1_volume" {
  name           = "okd_worker_1.qcow2"
  pool           = "default"
  size           = var.worker_1.volume_size * 1073741824
  base_volume_id = libvirt_volume.fedora_coreos.id
}

resource "libvirt_volume" "worker_2_volume" {
  name           = "okd_worker_2.qcow2"
  pool           = "default"
  size           = var.worker_2.volume_size * 1073741824
  base_volume_id = libvirt_volume.fedora_coreos.id
}

resource "libvirt_volume" "worker_3_volume" {
  name           = "okd_worker_3.qcow2"
  pool           = "default"
  size           = var.worker_3.volume_size * 1073741824
  base_volume_id = libvirt_volume.fedora_coreos.id
}
