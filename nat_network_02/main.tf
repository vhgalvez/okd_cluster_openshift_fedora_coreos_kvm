# nat_network_02\main.tf
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

  # Configuraciones adicionales de cada nodo
  bootstrap      = var.bootstrap
  controlplane_1 = var.controlplane_1
  controlplane_2 = var.controlplane_2
  controlplane_3 = var.controlplane_3
  worker_1       = var.worker_1
  worker_2       = var.worker_2
  worker_3       = var.worker_3
}

module "ignition" {
  source = "./modules/ignition"
}

module "domain" {
  source     = "./modules/domain"
  network_id = module.network.nat_network_02.id

  bootstrap_volume_id   = module.volumes.bootstrap_volume
  bootstrap_ignition_id = module.ignition.bootstrap_ignition.id

  controlplane_1_volume_id = module.volumes.controlplane_1_volume
  controlplane_2_volume_id = module.volumes.controlplane_2_volume
  controlplane_3_volume_id = module.volumes.controlplane_3_volume
  master_ignition_id       = module.ignition.master_ignition.id

  worker_ignition_id = module.ignition.worker_ignition.id
  worker_1_volume_id = module.volumes.worker_1_volume
  worker_2_volume_id = module.volumes.worker_2_volume
  worker_3_volume_id = module.volumes.worker_3_volume

  # Configuraciones adicionales de cada nodo
  bootstrap      = var.bootstrap
  controlplane_1 = var.controlplane_1
  controlplane_2 = var.controlplane_2
  controlplane_3 = var.controlplane_3
  worker_1       = var.worker_1
  worker_2       = var.worker_2
  worker_3       = var.worker_3
}
