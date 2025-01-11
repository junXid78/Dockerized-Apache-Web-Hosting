
# Hosting a Static Website with Docker and Apache HTTP Server

This project demonstrates how to containerize and host a simple static website using Docker. We will use the official Apache HTTP Server (`httpd`) image to serve the website within a Docker container. This makes it easy to deploy the website on any machine that has Docker installed.

## Features
- **Dockerized**: The website is packaged and deployed within a Docker container, making it portable across different environments.
- **Web Server**: Apache HTTP Server (`httpd`) is used to serve the static files of the website.
- **Portability**: The setup can be easily deployed on platforms such as AWS EC2, Azure, or locally.

## Prerequisites
Before you begin, make sure you have the following tools installed on your machine:

- [Docker](https://www.docker.com/products/docker-desktop)
- [Git](https://git-scm.com/)

## Getting Started

### 1. Clone the Repository
Start by cloning this repository to your local machine:

```bash
git clone https://github.com/yourusername/your-repository.git
cd your-repository
```

### 2. Create the Dockerfile
Navigate to the project directory (if not already there), then create a `Dockerfile`:

```bash
nano Dockerfile
```

Add the following content to the `Dockerfile`:

```dockerfile
# Use the official Apache HTTP server image as the base
FROM httpd:2.4

# Copy the static website files into the Apache document root
COPY . /usr/local/apache2/htdocs/

# Expose port 80 for the web server
EXPOSE 80
```

Save and close the file:
- Press `Ctrl + X`, then `Y` to confirm, and hit Enter.

### 3. Build the Docker Image
Now, build the Docker image using the following command:

```bash
docker build -t website-image .
```

### 4. Run the Docker Container
Run the container to start serving the website:

```bash
docker run -d -p 8080:80 website-image
```

This command will map port `8080` on your local machine to port `80` inside the container, which is the default HTTP port for Apache.

### 5. Access the Website
Once the container is running, you can access the website:

- **Locally**: Open your browser and navigate to `http://localhost:8080`
- **On a remote server (e.g., AWS EC2)**: Replace `localhost` with your server's public IP:
  ```bash
  http://<your-server-ip>:8080
  ```

## Conclusion
This project demonstrates how to easily host a static website using Docker and Apache HTTP Server. The website is packaged into a Docker container, which can be deployed to any platform that supports Docker, including cloud services like AWS EC2, Azure, or a local machine.
