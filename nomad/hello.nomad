job "hello-devops" {
  datacenters = ["dc1"]
  type = "service"

  group "hello-group" {
    task "hello-task" {
      driver = "docker"

      config {
        # If your Docker image is available locally:
        # image = "hello-devops:latest"

        # If you pushed it to Docker Hub:
        image = "yourdockerhubusername/hello-devops:latest"
      }

      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}
