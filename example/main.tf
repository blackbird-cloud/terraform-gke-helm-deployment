module "helm_release" {
  source  = "blackbird-cloud/gke-helm-deployment/google"
  version = "~> 1"

  project      = "my-google-project"
  region       = "europe-west4-c"
  cluster_name = "my-gke-cluster-name"

  name             = "my-app"
  namespace        = "my-app"
  create_namespace = true

  repository    = "https://prometheus-community.github.io/helm-charts"
  chart         = "prometheus"
  chart_version = "23.1.0"

  values = [
    yamlencode({
      alertmanager : {
        enabled : false
      },
      prometheus-pushgateway : {
        enabled : false
      }
    })
  ]

  cleanup_on_fail = true
  wait            = true
}
