# Number of Instance
output "num_public_agents" {
  description = "Specify the amount of public agents. These agents will host marathon-lb and edgelb"
  value       = "${var.num_public_agents}"
}

# Cluster Name
output "name_prefix" {
  description = "Cluster Name"
  value       = "${var.name_prefix}"
}

# Instance Type
output "machine_type" {
  description = "machine type"
  value       = "${var.machine_type}"
}

# Element by zone list
output "zone_list" {
  description = "zone list"
  value       = "${var.zone_list}"
}

# Source image to boot from
output "image" {
  description = "image"
  value       = "${var.image}"
}

# Disk Type to Leverage
output "disk_type" {
  description = "Disk Type to Leverage. The GCE disk type. Can be either 'pd-ssd', 'local-ssd', or 'pd-standard'. (optional)"
  value       = "${var.disk_type}"
}

# Disk Size in GB
output "disk_size" {
  description = "disk size"
  value       = "${var.disk_size}"
}

# Instance Subnetwork Name
output "public_agent_subnetwork_name" {
  description = "public agent subnetwork name"
  value       = "${var.public_agent_subnetwork_name}"
}

# Customer Provided Userdata
output "user_data" {
  description = "User data to be used on these instances (cloud-init)"
  value       = "${var.user_data}"
}

# SSH User
output "ssh_user" {
  description = "ssh user"
  value       = "${module.dcos-public-agent-instances.ssh_user}"
}

# SSH Public Key
output "public_ssh_key" {
  description = "public ssh key"
  value       = "${var.public_ssh_key}"
}

# Private IP Addresses
output "private_ips" {
  description = "List of private ip addresses created by this module"
  value       = ["${module.dcos-public-agent-instances.private_ips}"]
}

# Public IP Addresses
output "public_ips" {
  description = "List of public ip addresses created by this module"
  value       = ["${module.dcos-public-agent-instances.public_ips}"]
}

# Tested DCOS OSes Name
output "dcos_instance_os" {
  description = "Operating system to use. Instead of using your own AMI you could use a provided OS."
  value       = "${var.dcos_instance_os}"
}

# Preemptible Scheduling (bool)
output "scheduling_preemptible" {
  description = "scheduling preemptible"
  value       = "${var.scheduling_preemptible}"
}

# Public Node Self Link
output "instances_self_link" {
  description = "List of instance self links"
  value       = ["${module.dcos-public-agent-instances.instances_self_link}"]
}

# Returns the ID of the prereq script (if images are not used)
output "prereq_id" {
  description = "prereq id"
  value       = "${module.dcos-public-agent-instances.prereq_id}"
}
