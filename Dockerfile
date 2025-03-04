# Use official Python image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the project files
COPY . /app/

# Install dependencies
RUN pip install -r requirements.txt

# Run Django Migrations
RUN python manage.py migrate

# Expose the port
EXPOSE 10000

# Start the Server
CMD ["python", "manage.py", "runserver", "0.0.0.0:10000"]
