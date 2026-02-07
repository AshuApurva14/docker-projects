## Python Flask Web Application

A simple web application is built which show "Hello World" in the browser side.

### Project Structure

```python
  |-- docker-compose.yaml  # Docker Compose file
  |-- .dockerignore
  |-- README.md
  |-- venv  # Virtual Environment
  |-- app
       |-- Dockerfile
       |-- app.py
       |-- requirements.txt
```
### Code Snippet

```python
  from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
	return "Hello World!"

if __name__ == '__main__':
	app.run(host='0.0.0.0', port=8000)
```

### Containerization using Docker

- **Dockerfile** is created at `/app/Dockerfile`.


### Deploy with Docker Compose

```python
  services:
  web:
    build:
      context: app
      target: builder
    stop_signal: SIGINT
    ports:
      - '8000:8000'
```

- Execute below commands to build and start the service:
```bash
  docker compose up -d
```

```bash
(venv) @AshuApurva14 ➜ /workspaces/docker-projects/sample_projects_26/flask_webapp (main) $ docker compose up -d
[+] Building 3.2s (16/16) FINISHED                                                                                                                                                                                   
 => [internal] load local bake definitions                                                                                                                                                                      0.0s
 => => reading from stdin 604B                                                                                                                                                                                  0.0s
 => [internal] load build definition from Dockerfile                                                                                                                                                            0.0s
 => => transferring dockerfile: 543B                                                                                                                                                                            0.0s
 => resolve image config for docker-image://docker.io/docker/dockerfile:1.4                                                                                                                                     1.7s
 => [auth] docker/dockerfile:pull token for registry-1.docker.io                                                                                                                                                0.0s
 => CACHED docker-image://docker.io/docker/dockerfile:1.4@sha256:9ba7531bd80fb0a858632727cf7a112fbfd19b17e94c4e84ced81e24ef1a0dbc                                                                               0.0s
 => [internal] load .dockerignore                                                                                                                                                                               0.0s
 => => transferring context: 2B                                                                                                                                                                                 0.0s
 => [internal] load metadata for docker.io/library/python:3.10-alpine                                                                                                                                           1.2s
 => [auth] library/python:pull token for registry-1.docker.io                                                                                                                                                   0.0s
 => [builder 1/5] FROM docker.io/library/python:3.10-alpine@sha256:2574f0003acb2f96aabfa794869dd8bf9c3d86ee5afbc8b2baf87e8f4c59799f                                                                             0.0s
 => [internal] load build context                                                                                                                                                                               0.0s
 => => transferring context: 94B                                                                                                                                                                                0.0s
 => CACHED [builder 2/5] WORKDIR /app                                                                                                                                                                           0.0s
 => CACHED [builder 3/5] COPY requirements.txt /app                                                                                                                                                             0.0s
 => CACHED [builder 4/5] RUN --mount=type=cache,target=/root/.cache/pip     pip3 install -r requirements.txt                                                                                                    0.0s
 => CACHED [builder 5/5] COPY . /app                                                                                                                                                                            0.0s
 => exporting to image                                                                                                                                                                                          0.0s
 => => exporting layers                                                                                                                                                                                         0.0s
 => => writing image sha256:a2e719760eab1db26db439ad3be9bb6f22328bb96f52c64e0b5aa210d09f4850                                                                                                                    0.0s
 => => naming to docker.io/library/flask_webapp-web                                                                                                                                                             0.0s
 => resolving provenance for metadata file                                                                                                                                                                      0.0s
[+] Running 3/3
 ✔ flask_webapp-web              Built                                                                                                                                                                          0.0s 
 ✔ Network flask_webapp_default  Created                                                                                                                                                                        0.1s 
 ✔ Container flask_webapp-web-1  Started      
```


### Issues faced while building this project

1. **Path not found issue** while docker image e.g- COPY command has been defined wrong path to copy source code of the app.

2. **localhost bind issue:** In development env, ensure to bind `0.0.0.0` to run the container in local successfully.

```bash
 CMD ["flask", "run", "--bind=0.0.0.0"]
```

 