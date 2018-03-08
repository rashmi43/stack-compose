{
  "tree": {
    "version": "0.0.6",
    "script": {
      "1": {
        "container": "alpine",
        "ln": "1",
        "args": [
          "echo",
          {
            "values": [
              {
                "paths": [
                  "name"
                ],
                "$OBJECT": "path"
              }
            ],
            "string": "Hi, I am {}!",
            "$OBJECT": "string"
          }
        ],
        "exit": null,
        "enter": null,
        "output": null,
        "method": "run"
      }
    }
  },
  "environment": {
    "name": "Asyncy"
  },
  "filename": "app.story",
  "containers": {
    "alpine" {
      "pull_url": "registry.hub.docker.com/library/alpine"
    }
  }
}
