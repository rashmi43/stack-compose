The engine receives a story name and an app id through celery, for example:
'hello.story' app id=1

alpine echo "hello {{name}}"


# Get story data

GET http://api/apps/:id/stories/:story

```json
{
  "tree": {"story compiled tree"},
  "repository": {
    "clone_url": "git@github.com:OWNER/REPO.git",
    "pem": "rsa-ssh;...."
  },
  "environment": {
    "key": "value",
    "container_name": {
      "key": "value"
    }
  },
  "filename": "hello.story",
  "containers": {
    "twitter": {
      "pull_url": "https://hub.docker.com/r/asyncy/asyncy-node",
      "metadata..."
    },
    "owner/repo": {
      ...
    }
  }
}
```

# Run the story

POST http://api/apps/:id/stories/:story/narrations

```json
{
  "start": "starting time",
  "end": "end time",
  "status": "ok"
}
```

---

# Example 1

```json
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
      "pull_url": "alpine"
    }
  }
}
```

1. make a request to the hub
  - http://api/apps/1/stories/app.story
2. Parse the `containers

# custom registry

```
docker pull registry.hub.docker.com/library/alpine
```
