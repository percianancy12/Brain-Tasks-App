#!/bin/bash
set -e

echo "Verifying service..."
kubectl describe svc brain-tasks-app-service
kubectl get pods
kubectl get deployments