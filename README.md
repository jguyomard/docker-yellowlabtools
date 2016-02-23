# Yellow Lab Tools Docker Image

[Yellow Lab Tools](https://github.com/gmetais/YellowLabTools) is an open source project by [Gaël Métais](http://www.gaelmetais.com/). 
It lets you test a webpage (via an URL) and detects performance and front-end code quality issues.

Yellow Lab Tools Docker is a node:0.12.10 (Jessie) Docker image that provides an isolated Yellow Lab Tools instance.


## Running

Use:
```
docker run --rm -p 8383:8383 jguyomard/yellowlabtools
```

or run as a background daemon:

```
docker run -d -p 8383:8383 jguyomard/yellowlabtools
```

Then open http://localhost:8383/ in your browser.
