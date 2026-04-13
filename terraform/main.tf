
provider "vsphere" {
  user           = var.user
  password       = var.password
  vsphere_server = var.server
}

resource "vsphere_virtual_machine" "k8s" {
  count = 3
  name  = "k8s-node-${count.index}"
  num_cpus = 4
  memory   = 8192
}
