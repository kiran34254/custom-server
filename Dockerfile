# ------------ Dockerfile ------------
FROM python:3.9-slim

ARG User="Isa"
ENV APP_USER=${User}

WORKDIR /app

# Install requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY app.py .

# Expose default port
EXPOSE 8080

CMD ["python3", "app.py"]
