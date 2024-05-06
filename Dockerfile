FROM python:3.9

# Set the working directory
WORKDIR /app

# Clone the GitHub repository
RUN git clone https://github.com/rajmaskey/uplily

# Copy the requirements.txt file to the working directory
COPY requirements.txt .

# Install the dependencies
RUN pip install -r requirements.txt

# Copy the application.py file to the working directory
COPY application.py .

# Run the application
CMD ["python", "application.py"]