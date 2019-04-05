[![Build Status](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-gcp-public-agents/job/master/badge/icon)](https://jenkins-terraform.mesosphere.com/service/dcos-terraform-jenkins/job/dcos-terraform/job/terraform-gcp-public-agents/job/master/)
# DC/OS Instances

Creates DC/OS Public Agent intances

## Usage

```hcl
module "pubagts" {
  source = "dcos-terraform/instances/gcp"
  version = "~> 0.2.0"

  num_instance                   = "${var.instances_count}"
  disk_size                      = "${var.gcp_instances_disk_size}"
  disk_type                      = "${var.gcp_instances_disktype}"
  region                         = "${var.gcp_region}"
  machine_type                   = "${var.gcp_instances_gce_type}"
  cluster_name                   = "${var.cluster_name}"
  public_ssh_key                 = "${var.gcp_ssh_key}"
  instances_subnetwork_name      = "${module.network.instances_subnetwork_name}"
  instances_targetpool_self_link = "${module.network.instances_targetpool_self_link}"
  customer_image                 = "${var.image}"
  region                         = "${var.gcp_region}"
  zone_list                      = "${data.google_compute_zones.available.names}"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| cluster\_name | Name of the DC/OS cluster | string | n/a | yes |
| dcos\_instance\_os | Operating system to use. Instead of using your own AMI you could use a provided OS. | string | `"centos_7.5"` | no |
| dcos\_version | Specifies which DC/OS version instruction to use. Options: 1.12.3, 1.11.10, etc. See dcos_download_path or dcos_version tree for a full list. | string | n/a | yes |
| disk\_size | Disk Size in GB | string | n/a | yes |
| disk\_type | Disk Type to Leverage The GCE disk type. Can be either 'pd-ssd', 'local-ssd', or 'pd-standard'. (optional) | string | n/a | yes |
| hostname\_format | Format the hostname inputs are index+1, region, cluster_name | string | `"%[3]s-publicagent%[1]d-%[2]s"` | no |
| image | Source image to boot from | string | n/a | yes |
| labels | Add custom labels to all resources | map | `<map>` | no |
| machine\_type | Instance Type | string | n/a | yes |
| num\_public\_agents | Specify the amount of public agents. These agents will host marathon-lb and edgelb | string | n/a | yes |
| public\_agent\_subnetwork\_name | Instance Subnetwork Name | string | n/a | yes |
| public\_ssh\_key | SSH Public Key | string | n/a | yes |
| scheduling\_preemptible | Deploy instance with preemptible scheduling. (bool) | string | `"false"` | no |
| ssh\_user | SSH User | string | n/a | yes |
| tags | Add custom tags to all resources | list | `<list>` | no |
| user\_data | User data to be used on these instances (cloud-init) | string | `""` | no |
| zone\_list | Element by zone list | list | `<list>` | no |

## Outputs

| Name | Description |
|------|-------------|
| dcos\_instance\_os | Operating system to use. Instead of using your own AMI you could use a provided OS. |
| disk\_size | Disk Size in GB |
| disk\_type | Disk Type to Leverage The GCE disk type. Can be either 'pd-ssd', 'local-ssd', or 'pd-standard'. (optional) |
| image | Source image to boot from |
| instances\_self\_link | List of instance self links |
| machine\_type | Instance Type |
| name\_prefix | Name Prefix |
| num\_public\_agents | Specify the amount of public agents. These agents will host marathon-lb and edgelb |
| os\_user | The OS user to be used |
| prereq-id | Returns the ID of the prereq script (if user_data or ami are not used) |
| private\_ips | List of private ip addresses created by this module |
| public\_agent\_subnetwork\_name | Instance Subnetwork Name |
| public\_ips | List of public ip addresses created by this module |
| public\_ssh\_key | SSH Public Key |
| scheduling\_preemptible | Deploy instance with preemptible scheduling. (bool) |
| user\_data | User data to be used on these instances (cloud-init) |
| zone\_list | Element by zone list |

