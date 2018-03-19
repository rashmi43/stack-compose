{
  "filename": "twitter.story",
  "tree": {
    "version": "0.0.8",
    "script": {
      "1": {
        "method": "run",
        "ln": "1",
        "output": null,
        "container": "twitter",
        "args": [
          {
            "$OBJECT": "path",
            "paths": [
              "tweet"
            ]
          },
          {
            "$OBJECT": "string",
            "string": "I can tweet things!"
          }
        ],
        "enter": null,
        "exit": null
      }
    }
  },
  "environment": {
    "CONSUMER_KEY": "",
    "CONSUMER_SECRET": "",
    "ACCESS_TOKEN": "",
    "ACESS_TOKEN_SECRET" : ""
  },
  "containers": {
    "twitter": {
      "pull_url": "asyncy/asyncy-twitter",
      "commands": {
        "tweet": {
            "args": {
                "message": "string"
            }
        }
      }
    }
  },
  "repository": {
    "url": "https://github.com/asyncy/stack-compose.git"
  },
  "version": null
}
