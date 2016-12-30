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

Then open [`http://localhost:8383/`](http://localhost:8383/) in your browser.


## Supported tags

* [`latest`](https://github.com/jguyomard/docker-yellowlabtools/blob/master/Dockerfile) ;
* [`1.12`, `1`](https://github.com/jguyomard/docker-yellowlabtools/blob/v1.12.0/Dockerfile) ;
* [`1.11`](https://github.com/jguyomard/docker-yellowlabtools/blob/v1.11.0/Dockerfile) ;
* [`1.10`](https://github.com/jguyomard/docker-yellowlabtools/blob/v1.10/Dockerfile) ;
* [`1.9.0`, `1.9`](https://github.com/jguyomard/docker-yellowlabtools/blob/v1.9.0/Dockerfile) ;
* [`1.8.0`, `1.8`](https://github.com/jguyomard/docker-yellowlabtools/blob/v1.8.0/Dockerfile).
 

## Issues

If you have any problems with or questions about this docker image, please contact me through a [GitHub issue](https://github.com/jguyomard/docker-yellowlabtools/issues). 
If the issue is related to YellowLabTools itself, please leave an issue on the [YellowLabTools official repository](https://github.com/gmetais/YellowLabTools).


## Contributing

You are invited to contribute new features, fixes or updates to this container, through a [Github Pull Request](https://github.com/jguyomard/docker-yellowlabtools/pulls).
