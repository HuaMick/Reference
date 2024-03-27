#Source Image
FROM python:3.11

# Set the working directory
WORKDIR /

# Note if passing argument from cloud build convention is to prefix with _
ARG _ARGUMENT
ENV ENVIRONMENT_VARIABLE=${ARGUMENT}

# Run shell commands
RUN pip install pandas

# Copy the current directory contents into the container at /app
COPY ./ /

# Command executed when container starts
# Entry point will always run and cant be overwritten
# Variable expansion is not available unless you explicitly invoke a shell
ENTRYPOINT ["/bin/bash", "-c", "dbt run --target $ENVIRONMENT_VARIABLE"]
# CMD can be overwritten
CMD ["python", "-m", "uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8080"]