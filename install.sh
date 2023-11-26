helm install argo-cd charts/argo-cd/
helm template charts/armbruster-server/ | kubectl apply -f -
