## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1 |
| <a name="requirement_google"></a> [google](#requirement\_google) | 4.34.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.34.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_deployment"></a> [deployment](#module\_deployment) | blackbird-cloud/deployment/helm | 1.0.1 |

## Resources

| Name | Type |
|------|------|
| [google_client_config.provider](https://registry.terraform.io/providers/hashicorp/google/4.34.0/docs/data-sources/client_config) | data source |
| [google_container_cluster.my_cluster](https://registry.terraform.io/providers/hashicorp/google/4.34.0/docs/data-sources/container_cluster) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_atomic"></a> [atomic](#input\_atomic) | If set, installation process purges chart on fail. The wait flag will be set automatically if atomic is used. Defaults to false. | `bool` | `false` | no |
| <a name="input_chart"></a> [chart](#input\_chart) | Chart name to be installed. The chart name can be local path, a URL to a chart, or the name of the chart if repository is specified. It is also possible to use the <repository>/<chart> format here if you are running Terraform on a system that the repository has been added to with helm repo add but this is not recommended. | `string` | `null` | no |
| <a name="input_chart_version"></a> [chart\_version](#input\_chart\_version) | Specify the exact chart version to install. If this is not specified, the latest version is installed. helm\_release will not automatically grab the latest release, version must explicitly upgraded when upgrading an installed chart. | `string` | `null` | no |
| <a name="input_cleanup_on_fail"></a> [cleanup\_on\_fail](#input\_cleanup\_on\_fail) | Allow deletion of new resources created in this upgrade when upgrade fails. Defaults to true. | `bool` | `false` | no |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Cluster name | `string` | n/a | yes |
| <a name="input_create_namespace"></a> [create\_namespace](#input\_create\_namespace) | Create the namespace if it does not yet exist. Defaults to false. | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | Set release description attribute (visible in the history). | `string` | `null` | no |
| <a name="input_disable_webhooks"></a> [disable\_webhooks](#input\_disable\_webhooks) | Prevent hooks from running. Defaults to false. | `bool` | `false` | no |
| <a name="input_force_update"></a> [force\_update](#input\_force\_update) | Force resource update through delete/recreate if needed. Defaults to false. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Release name. | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace to install the release into. Defaults to default. | `string` | `"default"` | no |
| <a name="input_project"></a> [project](#input\_project) | Google Project ID | `string` | n/a | yes |
| <a name="input_recreate_pods"></a> [recreate\_pods](#input\_recreate\_pods) | Perform pods restart during upgrade/rollback. Defaults to false. | `bool` | `false` | no |
| <a name="input_region"></a> [region](#input\_region) | Google Region | `string` | n/a | yes |
| <a name="input_repository"></a> [repository](#input\_repository) | Repository URL where to locate the requested chart. | `string` | `null` | no |
| <a name="input_repository_password"></a> [repository\_password](#input\_repository\_password) | Password for HTTP basic authentication against the repository. | `string` | `null` | no |
| <a name="input_repository_username"></a> [repository\_username](#input\_repository\_username) | Username for HTTP basic authentication against the repository. | `string` | `null` | no |
| <a name="input_sensitive_values"></a> [sensitive\_values](#input\_sensitive\_values) | Which sensitive values to install for the helm chart. | `list(string)` | `[]` | no |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | Time in seconds to wait for any individual kubernetes operation (like Jobs for hooks). Defaults to 300 seconds. | `number` | `300` | no |
| <a name="input_values"></a> [values](#input\_values) | Which values to install for the helm chart. | `list(string)` | `[]` | no |
| <a name="input_wait"></a> [wait](#input\_wait) | Will wait until all resources are in a ready state before marking the release as successful. It will wait for as long as timeout. Defaults to true. | `bool` | `true` | no |
| <a name="input_wait_for_jobs"></a> [wait\_for\_jobs](#input\_wait\_for\_jobs) | If wait is enabled, will wait until all Jobs have been completed before marking the release as successful. It will wait for as long as timeout. Defaults to false. | `bool` | `true` | no |

## Outputs

No outputs.
