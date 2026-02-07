FROM ubuntu:18.04

LABEL maintainer="Ashutosh Apurva" 

# Installing Nginx into Ubuntu
RUN apt-get update && apt-get install nginx -y

# Copy nginx config file to /usr/nginx/sites-available/default path 
COPY ui_files/default /etc/nginx/sites-available/default


# Copy custom html page to default path
COPY ui_files/index.html /usr/share/nginx/html/index.html

# Expose port 80 for Nginx
EXPOSE 80


# Starting the Nginx server

# For Docker containers, the daemon off; directive tells Nginx to stay in the foreground. It disables the self-daemonizing behavior of Nginx.
# the -g option specifies a directive to Nginx.
# The reason we run the process in the foreground is to attach the console process to standard input, output, and error.

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]