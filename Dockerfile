FROM public.ecr.aws/lambda/python:3.10

RUN yum update -y

# Install the specified packages
RUN pip install opencv-python==4.8.0.76
RUN pip install Pillow==10.0.1

# Copy function code
COPY app ${LAMBDA_TASK_ROOT}/
COPY tmp /tmp/

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "main.handler" ]