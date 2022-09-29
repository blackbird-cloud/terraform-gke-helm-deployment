module "deployment" {
  source  = "blackbird-cloud/deployment/helm"
  version = "0.0.3"

  values    = var.values
  name      = var.name
  namespace = var.namespace
}
