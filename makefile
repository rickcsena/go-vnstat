GOPATH = GOPATH=`pwd`/Project; export GOPATH
PKG = main
GO = go

all: clean build
	@ls -l Project/bin

clean:
	@rm -rf Project/bin

erase:
	@sudo rm -rf Project/bin Project/pkg bower_components node_modules package-lock.json

build:
	@echo Build $@
	@$(GOPATH); $(GO) install go-vnstat
	@cp -r Project/client/* Project/bin/

install-dependences:
	@sudo apt install vnstat

install-client:
### check previous data
	@if [ -d $(PWD)/node_modules ]; \
	then \
		sudo rm -rf $(PWD)/node_modules $(PWD)/package-lock.json ; \
	fi; \

### check previous global's bower
	@if [ -x /usr/local/bin/bower ] ; \
	then \
		sudo npm uninstall -g bower ; \
	fi; \

### install bower
	@npm install bower --save-dev
	@sudo npm install -g bower
	@npm install

client:
	@echo Build $@
	@bower install
