# Close the previous container.
docker compose down

# Modify the permissions of prometheus/data
sudo chown -R nobody:nogroup prometheus/data

# Modify the permissions of grafana/data.
sudo chown -R 472:root grafana/data

# Start all containers
docker compose up -d

# Print all containers
docker ps -as --format "table {{.Image}}\t{{.Status}}\t{{.Names}}\t{{.Ports}}"