#!/bin/bash
# Update the package index
apt-get update -y

# Install Apache web server
apt-get install -y apache2

# Create a simple HTML file
cat <<EOL > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello srinu Welcome to My Web Server</title>
</head>
<body>
    <h1>Hello, World!</h1>
    <p>Hello srinu this is a sample web server setup on an AWS EC2 instance.</p>
</body>
</html>
EOL

# Start the Apache web server
systemctl start apache2

# Enable the Apache web server to start on boot
systemctl enable apache2
