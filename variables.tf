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
