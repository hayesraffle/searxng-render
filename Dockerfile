FROM searxng/searxng:latest

# Copy custom settings
COPY settings.yml /etc/searxng/settings.yml

# Render provides PORT env var
ENV PORT=8080
EXPOSE 8080

# SearXNG uses uwsgi internally; configure via env
ENV SEARXNG_PORT=${PORT}
