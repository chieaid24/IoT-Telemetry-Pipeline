resource "kubernetes_service_v1" "frontend" {
  metadata {
    name = "frontend"
  }

  spec {
    selector = {
      app = "frontend"
    }

    port {
      port        = 80
      target_port = 3000
    }

    # NodeGroup ? 
    type = "ClusterIP"
  }
}
