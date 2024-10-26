output "bootstrap_volume" {
  value = libvirt_volume.okd_bootstrap.id
}

output "controlplane_1_volume" {
  value = libvirt_volume.okd_controlplane_1.id
}

output "controlplane_2_volume" {
  value = libvirt_volume.okd_controlplane_2.id
}

output "controlplane_3_volume" {
  value = libvirt_volume.okd_controlplane_3.id
}

output "worker_1_volume" {
  value = libvirt_volume.worker_1_volume.id
}

output "worker_2_volume" {
  value = libvirt_volume.worker_2_volume.id
}

output "worker_3_volume" {
  value = libvirt_volume.worker_3_volume.id
}
