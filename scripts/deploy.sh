kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
kubectl rollout status deployment/brain-tasks-app --timeout=120s