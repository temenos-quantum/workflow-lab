SHELL = /usr/bin/env bash

###########################
#    A Fabric Makefile    #
###########################
#
# Purpose:
# To make it easy to export the latest version of a Fabric application —and import it back again if need be.
#
# Instructions:
# 1. Run `make filter`. You need only do this once. It prevents you from versioning your Fabric account and credentials.
# 2. Set the `fabric_acct`, `fabric_user` and `fabric_pssw` properties below with your Fabric account and credentials.
# 3. Call `make export` or `make import` to export and import your Fabric app respectively.

fabric_acct=
fabric_user=
fabric_pssw=

fabric_dir=fabric
fabric_proj=LoansOrigination1
fabric_proj_version=1.0

filter:
	git config --global filter.fabric_makefile.clean 'sed -e "s/\(.*fabric_acct.*=\).*/\1/g; s/\(.*fabric_user.*=\).*/\1/g; s/\(.*fabric_pssw.*=

build: clean zip
	printf "\nDone!\nNow import $(fabric_proj).zip into Fabric.\n\n"

clean:
#	find $(fabric_dir) -name '*.jar' -delete
	find . -name '*.zip' -delete

zip:
	zip --recurse-paths --display-bytes $(fabric_proj).zip $(fabric_dir)/$(fabric_proj) --exclude \*.DS_Store \*thumbs.db \*.desktop.ini \*_OLD.json

export:
	rm -f $(fabric_proj).zip
	fabric export --account $(fabric_acct) --user $(fabric_user) --password $(fabric_pssw) --app $(fabric_proj) --file $(fabric_proj).zip
	rm -rf fabric/$(fabric_proj)
	unzip $(fabric_proj).zip -d fabric/$(fabric_proj)
	rm $(fabric_proj).zip

import:
	fabric import --account $(fabric_acct) --user $(fabric_user) --password $(fabric_pssw) --file $(fabric_proj).zip --version $(fabric_proj_version)
