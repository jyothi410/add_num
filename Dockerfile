# Use an official Python runtime as a parent image
FROM python:3.10
 
# Set the working directory in the container
WORKDIR /FileFinder_Core.py
 
# Copy the current directory contents into the container at /app
COPY requirements.txt .
 
# Install any needed packages specified in requirements.txt
RUN pip3 install --trusted-host pypi.org --trusted-host files.pythonhosted.org --no-cache-dir -r requirements.txt
COPY . .
# Make port 80 available to the world outside this container
EXPOSE 80
 
# Define environment variable
ENV NAME env
 
# Run app.py when the container launches
CMD ["python", "FileFinder_Core.py"]
