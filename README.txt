PentAGI Installation
Step 1: Unzip package PentAGI
unzip pentagi.zip
Step 2: Go to PentAGI directory
cd pentagi
Step 3: Edit file .env
nano .env
## Ollama LLM Provider
# Ollama runs on the same Ubuntu host
OLLAMA_SERVER_URL=http://host.docker.internal:11434

# Main AI model
OLLAMA_SERVER_MODEL=qwen3.5:27b

# Disable automatic model download and loading
OLLAMA_SERVER_PULL_MODELS_ENABLED=false
OLLAMA_SERVER_LOAD_MODELS_ENABLED=false

## Embedding
EMBEDDING_URL=http://host.docker.internal:11434
EMBEDDING_KEY=
EMBEDDING_MODEL=nomic-embed-text:latest
EMBEDDING_PROVIDER=ollama
Step 4: Start Ollama
sudo systemctl start ollama

Check Ollama:

curl http://host.docker.internal/api/tags
Step 5: Build and run PentAGI
docker compose up -d --build
Step 6: Check PentAGI container and port
docker ps

Port must display:

0.0.0.0:8443->8443/tcp
Step 7: Access PentAGI Dashboard
https://localhost:8443

Default account:

Email: admin@pentagi.com
Password: admin