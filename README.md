[![Nnamaka](https://circleci.com/gh/Nnamaka/project-ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/circleci/circleci-docs)

# Boston House House Price model deployment on microservice Kubernetes
A Machine Learning model is put into operation as a microservice on kubernetes. This container serves out predictions  about housing prices through API calls.

# Dependencies
The list of software dependencies are:
* Docker
* Hadolint
* Python 3.7
* Kubernetes(minikube)

# Build Instructions
## 1. Clone Repo
<pre>
git clone https://github.com/Nnamaka/project-ml-microservice-kubernetes.git
</pre>
## 2. Create Enviroment
<pre>
python3 -m venv ~/.devops
source ~/.devops/bin/activate
</pre>
## 3. Install Dependencies
### Docker
For linux users, choose and follow the steps in this <a href="https://runnable.com/docker/install-docker-on-linux">link</a> according to your linux distribution.
Using yum package manager.
<pre>
sudo yum update -y
sudo yum install docker-engine -y
</pre>

### Hadolint
<pre>
wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.10.0/hadolint-Linux-x86_64
chmod +x /bin/hadolint
</pre>

### Kubernetes(minikube)
<pre>
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
mv minikube /usr/local/bin/
</pre>

## 4. Install Packages
<pre>
make install
</pre>

## 5. Lint Code
<pre>
make lint
</pre>

## 6. Run Docker
<pre>
./run_docker.sh
</pre>
<span align="left">
  <img width="600" heigt="300" src="https://github.com/Nnamaka/project-ml-microservice-kubernetes/blob/main/src/rundocker.gif">
</span>

## 7. Make a Prediction
<pre>
./make_prediction.sh
</pre>
<span align="left">
  <img width="600" heigt="300" src="https://github.com/Nnamaka/project-ml-microservice-kubernetes/blob/main/src/makeprediction.gif">
</span>

# Glossary
<h3>**.circleci**</h3>: Contains configuration file for CI/CD.<br>
<h3>**make_prediction.sh**</h3>: Sends post request aiming to trigger an inference on the flask app api<br>
<h3>**run_docker.sh**</h3>: Builds a docker container for the flask app<br>
<h3>**run_kubernetes.sh**</h3>: Builds a microservice on kubernetes cluster<br>
