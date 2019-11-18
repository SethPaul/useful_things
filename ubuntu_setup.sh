sudo apt install apt-transport-https software-properties-common
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'
sudo apt update
sudo apt install r-base

Rscrript -e "install.packages('IRkernel');IRkernel::installspec()"


sudo apt install -y \
	curl \
	docker.io \
	golang-go \
	htop \
	python-pip \
	r-base-core \
	scala \
	screen \ 
	tmux \
	vim-gtk \
	xclip \
        xdotool \
	virtualenv \
	postgresql \
	postgresql-contrib

	echo setxkbmap -option caps:escape >> ~/.profile
echo 'export PATH=$PATH:$(go env GOPATH)/bin' >> ~/.bashrc
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

git config --global user.email "sethcpaul@gamil.com"
git config --global user.name "Seth Paul"

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



python -m pip install grpcio
python -m pip install grpcio-tools

git clone git@github.com:magicmonty/bash-git-prompt.git
