.PHONY: serve build deploy neocities clean

serve:
	yarn gatsby develop

build: public

deploy:
	yarn rimraf public
	yarn gatsby build
	cp public/404.html public/not_found.html
	neocities push public

public:
	yarn gatsby build

output: packages.dhall spago.dhall
	spago build

node_modules: package.json yarn.lock
	yarn install

neocities:
	rm bin/neocities/Gemfile.lock
	rm bin/neocities/gemset.nix
	(cd bin/neocities && bundix -l)

clean:
	rm -rf public/
	rm -rf node_modules/
