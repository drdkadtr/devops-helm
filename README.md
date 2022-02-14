# devops-helm

## Usage

```terminal
repo=drdkadtr
chart=helm-test
helm repo add $repo https://${PAT}@raw.githubusercontent.com/drdkadtr/devops-helm/main/
helm repo update
helm search repo $repo
helm install 0.1.2 $repo/$chart

helm repo remove $repo
```
