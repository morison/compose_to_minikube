# refer
https://qiita.com/progrhyme/items/116948c9fef37f3e995b

# installation

## minikube

```
brew cask install minikube
```

## kompose

```
curl -L https://github.com/kubernetes/kompose/releases/download/v1.13.0/kompose-darwin-amd64 -o kompose
chmod +x kompose
sudo mv ./kompose /usr/local/bin/kompose
```

## postgresql

```
brew install postgresql
```

# Setup

## kompose up

```
kompose up
```

## get pods

```
kubectl get pods
```

## migration

```
kubectl exec -it rail-XXXXXX rake db:migrate
```

## deploy rails service

```
kubectl apply -f rails-service.yaml
```

## check

```
kubectl get services

minikube service list
```

## Open

```
minikube service rails
```
