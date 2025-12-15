resource "kubernetes_deployment_v1" "frontend" {
  metadata {
    name = "frontend"
    labels = {
      app = "frontend"
    }
  }

  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "frontend"
      }
    }

    template {
      metadata {
        labels = {
          app = "frontend"
        }
      }

      spec {
        container {
          name  = "frontend"
          image = "714454206433.dkr.ecr.us-east-1.amazonaws.com/iot-telemetry-pipeline:frontend"
          image_pull_policy = "Always"

          port {
            container_port = 3000
          }
        }
      }
    }
  }
}
