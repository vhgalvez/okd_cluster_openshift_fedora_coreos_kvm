# main.tf en nat_network_02
module "network" {
  source         = "./modules/network"
  bootstrap      = var.bootstrap
  controlplane_1 = var.controlplane_1
  controlplane_2 = var.controlplane_2
  controlplane_3 = var.controlplane_3
  worker_1       = var.worker_1
  worker_2       = var.worker_2
  worker_3       = var.worker_3
}

module "volumes" {
  source                     = "./modules/volumes"
  coreos_image               = var.coreos_image
  bootstrap_volume_size      = var.bootstrap.volume_size
  controlplane_1_volume_size = var.controlplane_1.volume_size
  controlplane_2_volume_size = var.controlplane_2.volume_size
  controlplane_3_volume_size = var.controlplane_3.volume_size
  worker_1_volume_size       = var.worker_1.volume_size
  worker_2_volume_size       = var.worker_2.volume_size
  worker_3_volume_size       = var.worker_3.volume_size
}

# Agregar el módulo "ignition"
module "ignition" {
  source = "./modules/ignition"
}

module "domain" {
  source     = "./modules/domain"
  network_id = module.network.cluster_okd_network.id

  # Volúmenes e ignition para los nodos de control y el bootstrap
  bootstrap_volume_id   = module.volumes.bootstrap_volume.id
  bootstrap_ignition_id = module.ignition.bootstrap_ignition.id
  controlplane_1_volume_id = module.volumes.controlplane_1_volume.id
  controlplane_2_volume_id = module.volumes.controlplane_2_volume.id
  controlplane_3_volume_id = module.volumes.controlplane_3_volume.id
  master_ignition_id       = module.ignition.master_ignition.id

  # Volúmenes e ignition para los nodos worker
  worker_ignition_id = module.ignition.worker_ignition.id
  worker_1_volume_id = module.volumes.worker_1_volume.id
  worker_2_volume_id = module.volumes.worker_2_volume.id
  worker_3_volume_id = module.volumes.worker_3_volume.id

  # Definir las variables de cada nodo
  bootstrap      = var.bootstrap
  controlplane_1 = var.controlplane_1
  controlplane_2 = var.controlplane_2
  controlplane_3 = var.controlplane_3
  worker_1       = var.worker_1
  worker_2       = var.worker_2
  worker_3       = var.worker_3
}
