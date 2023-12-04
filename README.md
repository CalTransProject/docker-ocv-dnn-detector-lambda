# docker-ocv-dnn-detector-lambda

Use these scripts to build container images using the [ocv-dnn-lambda-handler](https://github.com/rosealexander/ocv-dnn-lambda-handler)
and your own object detection model.

## requirements

- Docker Engine
- An AWS Account, signed in with the [AWS cli](https://github.com/aws/aws-cli)

## scripts

Two scripts are included, one for building the container image and another to upload this image to your own private [Amazon Elastic Container Registry](https://aws.amazon.com/ecr/)

```shell
bin/build
```

- Builds the **ocv-dnn-detector-lambda** container image.

```shell
bin/push
```

- Push the newly created image to [ECR](https://aws.amazon.com/ecr/)

## customization

By default, this script will download and include [YOLOv4-tiny](https://github.com/AlexeyAB/darknet) for this container image.
To change this behavior, place custom model config and weights files in a directory named `tmp` into the root directory of this project.

## license

Repository contents are licensed under the MIT No Attribution License. Downloaded software retains its original license.