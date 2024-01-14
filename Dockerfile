#
# Copyright 2023 Alexander Rose. All Rights Reserved.
#
# SPDX-License-Identifier: MIT-0.
#
FROM public.ecr.aws/lambda/python:3.10

RUN yum update -y

# Install the specified packages
RUN pip install opencv-python-headless==4.8.0.76 Pillow==10.0.1

# Copy function code
COPY app ${LAMBDA_TASK_ROOT}/
COPY tmp ${LAMBDA_TASK_ROOT}/models

CMD [ "main.lambda_handler" ]