.PHONY: serve build deploy neocities clean

serve:
	npx parcel assets/index.html & \
	spago bundle-app --main Main --to bundle/app.js --watch

build: dist/index.html

deploy:
	# this will rebuild dist/ and get rid of old
	# bundles before deploying to neocities
	yarn build
	neocities push dist/

dist/index.html: bundle/app.js
	yarn build

bundle/app.js: output
	spago bundle-app --main Main --to bundle/app.js

output: packages.dhall spago.dhall
	spago install

node_modules: package.json yarn.lock
	yarn install

neocities:
	rm bin/neocities/Gemfile.lock
	rm bin/neocities/gemset.nix
	# upgrade neocities to latest version
	(cd bin/neocities && bundix -l)

clean:
	rm -rf dist/
	rm -rf bundle/
	rm -rf output/
	rm -rf node_modules/
