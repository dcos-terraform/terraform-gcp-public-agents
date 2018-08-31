provider "google" {}

data "google_compute_subnetwork" "a" {
  name = "${var.public_agent_subnetwork_name}"

  #  region  = "${var.region}"
}

module "pubagt-frontend-compute-firewall" {
  source  = "dcos-terraform/compute-firewall/gcp"
  version = "~> 0.0"

  providers = {
    google = "google"
  }

  name_prefix         = "${var.name_prefix}"
  network             = "${data.google_compute_subnetwork.a.network}"
  instances_self_link = "${module.dcos-pubagt-instances.instances_self_link}"
  dcos_role           = "public-agent"
}


module "dcos-pubagt-instances" {
  source  = "dcos-terraform/instance/gcp"
  version = "~> 0.0"

  providers = {
    google = "google"
  }

  name_prefix              = "${var.name_prefix}"
  hostname_format          = "${var.hostname_format}"
  num_instances            = "${var.num_public_agents}"
  image                    = "${var.image}"
  user_data                = "${var.user_data}"
  machine_type             = "${var.machine_type}"
  instance_subnetwork_name = "${var.public_agent_subnetwork_name}"
  ssh_user                 = "${var.ssh_user}"
  public_ssh_key           = "${var.public_ssh_key}"
  zone_list                = "${var.zone_list}"
  disk_type                = "${var.disk_type}"
  disk_size                = "${var.disk_size}"
  tags                     = "${var.tags}"
  dcos_instance_os         = "${var.dcos_instance_os}"
  dcos_version             = "${var.dcos_version}"
}
