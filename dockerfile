# Use the official n8n image
FROM n8nio/n8n:latest

# Set environment variables (Modify these according to your needs)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# If using a database, configure it here
# ENV DB_TYPE=postgresdb
# ENV DB_POSTGRESDB_HOST=your-database-host
# ENV DB_POSTGRESDB_DATABASE=n8n
# ENV DB_POSTGRESDB_USER=username
# ENV DB_POSTGRESDB_PASSWORD=password

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
