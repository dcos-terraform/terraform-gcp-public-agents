output "num_public_agents" {
  description = "Specify the amount of public agents. These agents will host marathon-lb and edgelb"
  value       = "${var.num_public_agents}"
}

output "name_prefix" {
  description = "Name Prefix"
  value       = "${var.cluster_name}"
}

output "machine_type" {
  description = "Instance Type"
  value       = "${var.machine_type}"
}

output "zone_list" {
  description = "Element by zone list"
  value       = "${var.zone_list}"
}

output "image" {
  description = "Source image to boot from"
  value       = "${var.image}"
}

output "disk_type" {
  description = "Disk Type to Leverage The GCE disk type. Can be either 'pd-ssd', 'local-ssd', or 'pd-standard'. (optional)"
  value       = "${var.disk_type}"
}

output "disk_size" {
  description = "Disk Size in GB"
  value       = "${var.disk_size}"
}

output "public_agent_subnetwork_name" {
  description = "Instance Subnetwork Name"
  value       = "${var.public_agent_subnetwork_name}"
}

output "user_data" {
  description = "User data to be used on these instances (cloud-init)"
  value       = "${var.user_data}"
}

output "os_user" {
  description = "The OS user to be used"
  value       = "${module.dcos-public-agent-instances.ssh_user}"
}

output "public_ssh_key" {
  description = "SSH Public Key"
  value       = "${var.public_ssh_key}"
}

output "private_ips" {
  description = "List of private ip addresses created by this module"
  value       = ["${module.dcos-public-agent-instances.private_ips}"]
}

output "public_ips" {
  description = "List of public ip addresses created by this module"
  value       = ["${module.dcos-public-agent-instances.public_ips}"]
}

output "dcos_instance_os" {
  description = "Operating system to use. Instead of using your own AMI you could use a provided OS."
  value       = "${var.dcos_instance_os}"
}

output "scheduling_preemptible" {
  description = "Deploy instance with preemptible scheduling"
  value       = "${var.scheduling_preemptible}"
}

output "instances_self_link" {
  description = "List of instance self links"
  value       = ["${module.dcos-public-agent-instances.instances_self_link}"]
}

output "prereq-id" {
  description = "Returns the ID of the prereq script (if user_data or ami are not used)"
  value       = "${module.dcos-public-agent-instances.prereq_id}"
}
