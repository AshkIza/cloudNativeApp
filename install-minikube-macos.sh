# !bin/bash
echo 'installing hypervisor (hyperkit) ...'
echo 'installing minikube and kubectl ...'
echo 'creating a minikube kubernetes cluster ...'

brew update
brew install hyperkit
brew install minikube

minikube start --driver=hyperkit
minikube status


