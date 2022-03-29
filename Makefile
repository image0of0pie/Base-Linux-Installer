cmd=sudo apt
cmd_get=sudo apt-get
pre:
	$(cmd) update
	$(cmd) upgrade
	$(cmd) install curl

cpp:
	$(cmd) install build-essential
	$(cmd) install g++

python:
	$(cmd) install python
	$(cmd) install pip
	$(cmd) install python3-venv

javascript:
	$(cmd) install nodejs
	$(cmd) install npm

go:
	sudo add-apt-repository ppa:longsleep/golang-backports
	$(cmd) install golang-go
	export PATH=$PATH:/usr/local/go/bin

docker:
	curl -fsSL https://get.docker.com -o get-docker.sh
	sudo sh get-docker.sh

java:
	$(cmd) install default-jdk
	$(cmd) install default-jre

sqlite3:
	$(cmd) install sqlite3

vscode:
	$(cmd) install code

git:
	$(cmd) install git
	
all:
	make pre cpp python javascript java go docker sqlite3 git