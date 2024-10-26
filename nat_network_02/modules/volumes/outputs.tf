output "bootstrap_volume" {
  value = libvirt_volume.okd_bootstrap
}

output "controlplane_1_volume" {
  value = libvirt_volume.okd_controlplane_1
}

output "controlplane_2_volume" {
  value = libvirt_volume.okd_controlplane_2
}

output "controlplane_3_volume" {
  value = libvirt_volume.okd_controlplane_3
}


output "master_1_volume" {
  value = libvirt_volume.okd_master_1
}

output "master_2_volume" {
  value = libvirt_volume.okd_master_2
}

output "master_3_volume" {
  value = libvirt_volume.okd_master_3
}
