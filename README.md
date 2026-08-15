# devops-workflow-springer-capital

**Name:** Wandile Ndlovu  
**Date:** August 15, 2026  

## Project Description
This repository demonstrates a complete DevOps workflow using open-source tools. It simulates a small pipeline containing Linux scripting, Docker containerization, automated testing via GitHub Actions, Nomad job deployment, and logging configuration via Grafana Loki.

## Directory Structure
- `hello.py` - Sample application script.
- `scripts/sysinfo.sh` - Linux system information script.
- `Dockerfile` - Containerization instructions.
- `.github/workflows/ci.yml` - CI/CD pipeline configuration.
- `nomad/hello.nomad` - Nomad job configuration.
- `monitoring/loki_setup.txt` - Notes on setting up local Loki logging.

## Run Instructions

### 1. Linux Script
Make the script executable and run it:
\`\`\`bash
chmod +x scripts/sysinfo.sh
./scripts/sysinfo.sh
\`\`\`

### 2. Docker
Build the Docker image:
\`\`\`bash
docker build -t hello-devops:latest .
\`\`\`
Run the container locally:
\`\`\`bash
docker run hello-devops:latest
\`\`\`

### 3. Nomad Job Deployment
Ensure Nomad is running in development mode (`nomad agent -dev`), then deploy the job:
\`\`\`bash
nomad job run nomad/hello.nomad
\`\`\`

### 4. Monitoring (Loki)
See `monitoring/loki_setup.txt` for exact commands to spin up Loki, configure the Docker logging driver, and route logs to the monitoring stack.
