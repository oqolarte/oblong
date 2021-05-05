.POSIX:
	DESTDIR=public

.PHONY: all
all: build deploy

.PHONY: build
build:
	@echo " Generating site"
	hugo --cleanDestinationDir --gc --minify
.PHONY: deploy
	@echo " Preparing commit"
	@cd $(DESTDIR) \
			&& git config user.email "ohio@araw.xyz" \
			&& git config user.name "oqo" \
			&& git add . \
			&& git status \
			&& git commit -m " Scripted push!" \
			&& git push -u origin main
	@echo " Site is deployed!"
