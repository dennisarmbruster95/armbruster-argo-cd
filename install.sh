kubectl create ns monitoring
kubectl create ns nextcloud
kubectl create ns ingress
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/mandatory.yaml
minikube addons enable ingress
helm repo add argo-cd https://argoproj.github.io/argo-helm
helm repo add kong https://charts.konghq.com
helm repo add emberstack https://emberstack.github.io/helm-charts
helm repo update
helm upgrade --install reflector emberstack/reflector
helm dep update charts/argo-cd/
helm install argo-cd charts/argo-cd/
helm template charts/armbruster-server/ | kubectl apply -f -
