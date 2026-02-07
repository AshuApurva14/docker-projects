# Stage 1: Build Maven
FROM maven:3.8.4 AS maven_builder

# Switch to root user for installation
USER root

# Optionally, install additional tools or dependencies needed for Maven build
# For example, if you need Git:
# RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Switch back to the default maven user
USER 1001

# Stage 2: Build Docker
FROM docker:20.10.10 AS docker_builder

# Switch to root user for installation
USER root

# Optionally, install additional tools or dependencies needed for Docker build
# For example, if you need jq:
# RUN apk --no-cache add jq

# Switch back to the default docker user
USER 1001

# Stage 3: Final image with Maven and Docker
FROM jenkins/inbound-agent:4.7-1

# Copy Maven from the Maven builder stage
COPY --from=maven_builder /usr/share/maven /usr/share/maven

# Copy Docker from the Docker builder stage
COPY --from=docker_builder /usr/local/bin/docker /usr/local/bin/docker

# Switch back to the Jenkins user
USER jenkins

# Set environment variables if needed
ENV PATH="/usr/share/maven/bin:${PATH}"

# Optionally, you can customize the entry point or add more configurations here
