resource "libvirt_ignition" "bootstrap_ignition" {
  name    = "okd_bootstrap.ign"
  pool    = "default"
  content = "/home/victory/okd_cluster_openshift_fedora_coreos_kvm/nat_network_02/ignition_configs/bootstrap.ign"
}

resource "libvirt_ignition" "master_ignition" {
  name    = "okd_master.ign"
  pool    = "default"
  content = "/home/victory/okd_cluster_openshift_fedora_coreos_kvm/nat_network_02/ignition_configs/master.ign"
}

resource "libvirt_ignition" "master_ignition" {
  name    = "okd_worker.ign"
  pool    = "default"
  content = "//home/victory/okd_cluster_openshift_fedora_coreos_kvm/nat_network_02/ignition_configs/worker.ign"
}