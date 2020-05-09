.PHONY: neocities

neocities:
	rm bin/neocities/Gemfile.lock
	rm bin/neocities/gemset.nix
	(cd bin/neocities && bundix -l)
