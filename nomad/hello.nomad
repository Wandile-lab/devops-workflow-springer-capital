job "hello-devops" {
  datacenters = ["dc1"]
  type        = "service"

  group "hello-group" {
    count = 1

    task "hello-task" {
      driver = "docker"

      config {
        image = "hello-devops:latest"
        # Note: If running locally, make sure to build the image first: 
        # docker build -t hello-devops:latest .
      }

      resources {
        cpu    = 100 # 100 MHz
        memory = 64  # 64 MB
      }
    }
  }
}
