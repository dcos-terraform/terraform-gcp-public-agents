# Number of Instance
output "num_public_agents" {
  value = "${var.num_public_agents}"
}

# Cluster Name
output "name_prefix" {
  value = "${var.name_prefix}"
}

# Instance Type
output "machine_type" {
  value = "${var.machine_type}"
}

# Element by zone list
output "zone_list" {
  value = "${var.zone_list}"
}

# Source image to boot from
output "image" {
  value = "${var.image}"
}

# Disk Type to Leverage
output "disk_type" {
  value = "${var.disk_type}"
}

# Disk Size in GB
output "disk_size" {
  value = "${var.disk_size}"
}

# Instance Subnetwork Name
output "public_agent_subnetwork_name" {
  value = "${var.public_agent_subnetwork_name}"
}

# Customer Provided Userdata
output "user_data" {
  value = "${var.user_data}"
}

# SSH User
output "ssh_user" {
  value = "${module.dcos-pubagt-instances.ssh_user}"
}

# SSH Public Key
output "public_ssh_key" {
  value = "${var.public_ssh_key}"
}

# Private IP Addresses
output "private_ips" {
  value = ["${module.dcos-pubagt-instances.private_ips}"]
}

# Public IP Addresses
output "public_ips" {
  value = ["${module.dcos-pubagt-instances.public_ips}"]
}

# GFE Public IP Address
output "gfe.public_ip" {
  value = "${module.pubagt-frontend-compute-forwarding-rule.gfe.public_ip}"
}

# Tested DCOS OSes Name
output "dcos_instance_os" {
  value = "${var.dcos_instance_os}"
}

# Public Node Self Link
output "instances_self_link" {
  value = ["${module.dcos-pubagt-instances.instances_self_link}"]
}

# Public Node Target Pool Self link
output "target_pool" {
  value = ["${module.pubagt-frontend-compute-forwarding-rule.target_pool}"]
}

# Returns the ID of the prereq script (if images are not used)
output "prereq_id" {
  value = "${module.dcos-pubagt-instances.prereq_id}"
}
