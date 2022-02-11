SHELL        := /bin/bash -o pipefail
GITHUB_ACTOR ?= drdkadtr

all: git-pre update_index
	git add --all
	git commit -a -m "Update index"
	git push -u origin HEAD
	
update_index:	
	echo 'Updating charts repo index...'
	helm repo index .

git-pre:
	git config user.name "$(GITHUB_ACTOR)"
	git config user.email "$(GITHUB_ACTOR)@users.noreply.github.com"
