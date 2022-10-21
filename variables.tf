variable "values" {
  type        = list(string)
  description = "List YAML encoded values to be passed to chart"
}

variable "name" {
  type        = string
  description = "deployment name"
}

variable "namespace" {
  type        = string
  description = "Namespace to deploy"
}

variable "cluster_name" {
  description = "Cluster name"
  type        = string
}

variable "project" {
  type        = string
  description = "Google Project ID"
}

variable "region" {
  type        = string
  description = "Google Region"
}

variable "chart" {
  type        = string
  description = "Chart name, otherwise default helm template will be used"
  default     = ""
}

variable "repository" {
  type        = string
  description = "Chart repository url, required when chart is not empty"
  default     = ""
}

variable "chart_version" {
  type        = string
  description = "Chart version, required when chart is not empty"
  default     = ""
}
