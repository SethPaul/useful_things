sudo apt install -y curl \
	docker.io \
htop \
tmux \
golang-go \
scala \
r-base-core \
vim \
xclip \

echo setxkbmap -option caps:escape >> ~/.profile
echo 'export PATH=$PATH:$(go env GOPATH)/bin' >> ~/.bashrc

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
  && chmod +x minikube
curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl

chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

sudo cp minikube /usr/local/bin && rm minikube

ssh-keygen -t rsa -b 4096 -C "sethcpaul@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

xclip -sel clip < ~/.ssh/id_rsa.pub

curl https://sdk.cloud.google.com | bash --disable-prompts --install-dir=/home/seth/workspace
exec -l $SHELL
gcloud init

