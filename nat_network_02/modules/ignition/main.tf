# nat_network_02\modules\ignition\main.tf

# Definición del recurso para el archivo Ignition del bootstrap
resource "libvirt_ignition" "bootstrap_ignition" {
  name    = "okd_bootstrap.ign"
  pool    = "default"
  content = "/home/victory/okd_cluster_openshift_fedora_coreos_kvm/nat_network_02/ignition_configs/bootstrap.ign"
}

# Definición del recurso para el archivo Ignition del master
resource "libvirt_ignition" "master_ignition" {
  name    = "okd_master.ign"
  pool    = "default"
  content = "/home/victory/okd_cluster_openshift_fedora_coreos_kvm/nat_network_02/ignition_configs/master.ign"
}

# Definición del recurso para el archivo Ignition de los workers
resource "libvirt_ignition" "worker_ignition" {
  name    = "okd_worker.ign"
  pool    = "default"
  content = "/home/victory/okd_cluster_openshift_fedora_coreos_kvm/nat_network_02/ignition_configs/worker.ign"
}
