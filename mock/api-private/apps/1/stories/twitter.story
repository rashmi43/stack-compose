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
      "CONSUMER_KEY": "fdLh6XQiIYmw2GyAHNJomuGTS",
      "CONSUMER_SECRET": "rqdUjE6omjBcvCKtB6X1htVj2N72rmCZ5IDjNWoFAf0RoTN3d9",
      "ACCESS_TOKEN": "2615569908-IixyTd1TpMeD3oEMPlhBFXiktTQDayY7DEg6Y14",
      "ACESS_TOKEN_SECRET" : "akqD6I6jJ9ALA4nF7UI3Gj0Bocvw7fbnBAxYzGzYWlvCl"
  },
  "containers": {
    "twitter": {
      "pull_url": "asyncy/asyncy-twitter",
      "commands": {
        "tweet": {
            "arguments": [
                {"type": "string"}
            ]
        }
      }
    }
  },
  "repository": {
    "url": "https://github.com/asyncy/stack-compose.git"
  },
  "version": null
}
