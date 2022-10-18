.POSIX:
DESTDIR=public
HUGO_VERSION=0.102.3

.PHONY: all
all: get_repository clean get build test deploy

.PHONY: get_repository
get_repository:
	@echo "Getting oblong repository"
	git clone git@github.com:oqolarte/oblong.git $(DESTDIR)

.PHONY: clean
clean:
	@echo "Cleaning old build"
	cd $(DESTDIR) && rm -rf *

.PHONY: get
get:
	@echo "Checking for hugo"
	@if ! [ -x "$$(command -v hugo)" ]; then\
		echo "? Getting Hugo";\
	    wget -q -P tmp/ https://github.com/gohugoio/hugo/releases/download/v$(HUGO_VERSION)/hugo_extended_$(HUGO_VERSION)_Linux-64bit.tar.gz;\
		tar xf tmp/hugo_extended_$(HUGO_VERSION)_Linux-64bit.tar.gz -C tmp/;\
		sudo mv -f tmp/hugo /usr/bin/;\
		rm -rf tmp/;\
		hugo version;\
	fi

.PHONY: build
build:
	@echo "Generating site"
	hugo --cleanDestinationDir --gc -d $(DESTDIR)

.PHONY: deploy
deploy:
	@echo "Preparing commit"
	@eval "$(ssh-agent -s)" \
	&& ssh-add ~/.ssh/id_ed25519
	@git config user.email "ohio@araw.xyz" \
	&& git config user.name "oqo" \
	&& git add . \
	&& git status \
	&& git commit -m "Deploying via makefile"
	@hugo --cleanDestinationDir --gc -d $(DESTDIR)
	@git add . \
	&& git commit -m "Deploying via makefile" \
	&& git push -u origin main
	@rsync -rtvzP $(DESTDIR) root@202.182.120.99:/var/www/ohio.araw.xyz
	@echo "Site is deployed!"
