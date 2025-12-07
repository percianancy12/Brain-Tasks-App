#!/bin/bash
set -e

echo "Applying deployment..."
kubectl apply -f deployment.yaml

echo "Applying service..."
kubectl apply -f service.yaml

echo "Waiting for rollout..."
kubectl rollout status deployment/brain-tasks-app --timeout=120s
echo "Deployment and service applied successfully."