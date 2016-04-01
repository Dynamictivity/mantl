provider "vsphere" {
  vsphere_server = ""
  user = ""
  password = ""
  allow_unverified_ssl = "false"
}

module "vsphere-dc" {
  source = "./terraform/vsphere"
  long_name = ""
  short_name = ""
  datacenter = ""
  cluster = ""
  pool = ""
  template = ""
  network_label = ""
  datastore = ""
  control_count = 3
  worker_count = 4
  edge_count = 2
  control_volume_size = 20 # size in gigabytes
  worker_volume_size = 20
  edge_volume_size = 20
  ssh_user = ""
  ssh_key = ""
  consul_dc = ""

  #Optional Parameters
  #linked_clone = ""
  #folder = ""  
  #control_cpu = ""
  #worker_cpu = ""
  #edge_cpu = ""
  #control_ram = ""
  #worker_ram = ""
  #edge_ram = ""
}
