## YAML Linter container

#### Tests status

[![Build Status](https://travis-ci.org/pawelpiwosz/docker-linter-yaml.svg?branch=master)](https://travis-ci.org/pawelpiwosz/docker-linter-yaml)

### Synopsis

Validate your YAML files.

### Pull image

In order to pull image from dockerhub registry, run:

```
docker pull almerhor/lintyaml
```

### Build

In order to build the image, run:

```
docker build -t lintyaml .
```

### Run

Regarding the fact, that you work on local file and lintyaml is
a containerized service, the directory where file to lint is located has to be
mounted during the run. Docker uses the directory `/bucket` as a work
directory, so the executing command should look like:

```
docker run --rm -v $(pwd)/bucket/:/bucket lintyaml my_file.yml
```
