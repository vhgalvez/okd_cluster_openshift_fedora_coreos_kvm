
#nat_network_02\modules\network\main.tf cluster_okd_network
resource "libvirt_network" "nat_network_02" {
  name      = "nat_network_02"
  mode      = "nat"
  domain    = "okd.lab"
  addresses = ["10.17.3.0/24"]
  autostart = false

  dns {
    enabled    = true
    local_only = false
  }

  dnsmasq_options {
    # Bootstrap node
    options {
      option_name  = "address"
      option_value = "/okd-bootstrap.local.okd.lab/${var.bootstrap.address}"
    }
    options {
      option_name  = "host-record"
      option_value = "okd-bootstrap.local.okd.lab,${var.bootstrap.address}"
    }
    options {
      option_name  = "address"
      option_value = "/api-int.local.okd.lab/${var.bootstrap.address}"
    }
    options {
      option_name  = "host-record"
      option_value = "api-int.local.okd.lab,${var.bootstrap.address}"
    }

    # Control Plane 1
    options {
      option_name  = "address"
      option_value = "/okd-controlplane-1.local.okd.lab/${var.controlplane_1.address}"
    }
    options {
      option_name  = "host-record"
      option_value = "okd-controlplane-1.local.okd.lab,${var.controlplane_1.address}"
    }
    options {
      option_name  = "address"
      option_value = "/api.local.okd.lab/${var.controlplane_1.address}"
    }
    options {
      option_name  = "host-record"
      option_value = "api.local.okd.lab,${var.controlplane_1.address}"
    }
    options {
      option_name  = "address"
      option_value = "/api-int.local.okd.lab/${var.controlplane_1.address}"
    }
    options {
      option_name  = "host-record"
      option_value = "api-int.local.okd.lab,${var.controlplane_1.address}"
    }
    options {
      option_name  = "address"
      option_value = "/oauth-openshift.apps.local.okd.lab/${var.controlplane_1.address}"
    }
    options {
      option_name  = "address"
      option_value = "/console-openshift-console.apps.local.okd.lab/${var.controlplane_1.address}"
    }

    # Control Plane 2
    options {
      option_name  = "address"
      option_value = "/okd-controlplane-2.local.okd.lab/${var.controlplane_2.address}"
    }
    options {
      option_name  = "host-record"
      option_value = "okd-controlplane-2.local.okd.lab,${var.controlplane_2.address}"
    }
    options {
      option_name  = "address"
      option_value = "/api.local.okd.lab/${var.controlplane_2.address}"
    }
    options {
      option_name  = "host-record"
      option_value = "api.local.okd.lab,${var.controlplane_2.address}"
    }
    options {
      option_name  = "address"
      option_value = "/api-int.local.okd.lab/${var.controlplane_2.address}"
    }
    options {
      option_name  = "host-record"
      option_value = "api-int.local.okd.lab,${var.controlplane_2.address}"
    }
    options {
      option_name  = "address"
      option_value = "/oauth-openshift.apps.local.okd.lab/${var.controlplane_2.address}"
    }
    options {
      option_name  = "address"
      option_value = "/console-openshift-console.apps.local.okd.lab/${var.controlplane_2.address}"
    }

    # Control Plane 3
    options {
      option_name  = "address"
      option_value = "/okd-controlplane-3.local.okd.lab/${var.controlplane_3.address}"
    }
    options {
      option_name  = "host-record"
      option_value = "okd-controlplane-3.local.okd.lab,${var.controlplane_3.address}"
    }
    options {
      option_name  = "address"
      option_value = "/api.local.okd.lab/${var.controlplane_3.address}"
    }
    options {
      option_name  = "host-record"
      option_value = "api.local.okd.lab,${var.controlplane_3.address}"
    }
    options {
      option_name  = "address"
      option_value = "/api-int.local.okd.lab/${var.controlplane_3.address}"
    }
    options {
      option_name  = "host-record"
      option_value = "api-int.local.okd.lab,${var.controlplane_3.address}"
    }
    options {
      option_name  = "address"
      option_value = "/oauth-openshift.apps.local.okd.lab/${var.controlplane_3.address}"
    }
    options {
      option_name  = "address"
      option_value = "/console-openshift-console.apps.local.okd.lab/${var.controlplane_3.address}"
    }

    # Etcd nodes
    options {
      option_name  = "address"
      option_value = "/etcd-0.local.okd.lab/${var.controlplane_1.address}"
    }
    options {
      option_name  = "address"
      option_value = "/etcd-1.local.okd.lab/${var.controlplane_2.address}"
    }
    options {
      option_name  = "address"
      option_value = "/etcd-2.local.okd.lab/${var.controlplane_3.address}"
    }
    options {
      option_name  = "srv-host"
      option_value = "_etcd-server-ssl._tcp,etcd-0.local.okd.lab,2380"
    }
    options {
      option_name  = "srv-host"
      option_value = "_etcd-server-ssl._tcp,etcd-1.local.okd.lab,2380"
    }
    options {
      option_name  = "srv-host"
      option_value = "_etcd-server-ssl._tcp,etcd-2.local.okd.lab,2380"
    }

    # Worker 1
    options {
      option_name  = "address"
      option_value = "/okd-worker-1.local.okd.lab/${var.worker_1.address}"
    }
    options {
      option_name  = "host-record"
      option_value = "okd-worker-1.local.okd.lab,${var.worker_1.address}"
    }

    # Worker 2
    options {
      option_name  = "address"
      option_value = "/okd-worker-2.local.okd.lab/${var.worker_2.address}"
    }
    options {
      option_name  = "host-record"
      option_value = "okd-worker-2.local.okd.lab,${var.worker_2.address}"
    }

    # Worker 3
    options {
      option_name  = "address"
      option_value = "/okd-worker-3.local.okd.lab/${var.worker_3.address}"
    }
    options {
      option_name  = "host-record"
      option_value = "okd-worker-3.local.okd.lab,${var.worker_3.address}"
    }
  }
}
