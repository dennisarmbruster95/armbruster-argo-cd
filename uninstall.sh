helm uninstall argo-cd
kubectl delete crds $(kubectl get crds)
