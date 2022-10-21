module "deployment" {
  source  = "blackbird-cloud/deployment/helm"
  version = "0.0.6"

  chart         = var.chart != "" ? var.chart : "${path.module}/chart"
  repository    = var.chart != "" ? var.repository : null
  chart_version = var.chart != "" ? var.chart_version : null

  values    = var.values
  name      = var.name
  namespace = var.namespace
}
