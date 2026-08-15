FROM python:3.9-slim

WORKDIR /app

COPY hello.py /app/

# Run the script on startup
CMD ["python", "hello.py"]
