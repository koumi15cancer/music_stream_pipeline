FROM python:3.10

# Create a non-root user
RUN useradd -m -s /bin/bash spotify

# Set the working directory
WORKDIR /app/spotify

# Copy requirements.txt and install dependencies
COPY requirements.txt .

# Install dependencies from requirements.txt
RUN pip install -r requirements.txt

# Change directory to the src folder
WORKDIR /app/spotify/src

# Set the entry point to run main.py
CMD ["python", "main.py"]
