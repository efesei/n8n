FROM n8nio/n8n:latest

# Expose the port n8n uses
EXPOSE 8080

# Set the webhook URL environment variable to match Cloud Run's URL
# You'll need to replace this with your actual Cloud Run URL after the first deployment
ENV N8N_PROTOCOL=https
ENV N8N_PORT=8080
ENV N8N_HOST=your-service-url.run.app
ENV N8N_LISTEN_ADDRESS=0.0.0.0

# Start n8n
CMD ["n8n", "start"]
