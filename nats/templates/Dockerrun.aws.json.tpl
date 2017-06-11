{
  "AWSEBDockerrunVersion": "1",
  "Image": {
    "Name": "${docker_image}:${docker_tag}",
    "Update": "true"
  },
  "Ports": [
    { "ContainerPort":"4222 },
    { "ContainerPort":"6222" },
    { "ContainerPort":"8222" }
  ]
}
