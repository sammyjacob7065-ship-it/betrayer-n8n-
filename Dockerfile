FROM n8nio/n8n:latest

ENV TZ=UTC

# Basic auth (you can override these in Render)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=change_me_in_render

# Let Render set these, but provide defaults
ENV N8N_HOST=0.0.0.0
ENV WEBHOOK_URL=https://your-app.onrender.com

EXPOSE 5678

CMD ["n8n", "start"]
