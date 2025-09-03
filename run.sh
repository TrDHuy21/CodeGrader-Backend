#!/bin/bash

echo "🔄 Updating CodeGrader Microservices..."

# Pull latest images
echo "📥 Pulling latest images..."
docker-compose -f docker-compose.yml pull

# Restart services with new images
echo "🔄 Restarting services..."
docker-compose -f docker-compose.yml up -d