# devops-helm

## Usage

```terminal
repo=foo

helm repo add $repo https://${PAT}@raw.githubusercontent.com/drdkadtr/devops-helm/main/
helm repo update
helm search repo $repo
helm install my-release $repo/<chart>

helm repo remove $repo
```
