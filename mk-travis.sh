#! /usr/bin/env nix-shell
#! nix-shell -p ghc -i zsh

# prepare travis file with everything we need

runghc --ghc-arg="-package Cabal" \
~/Documents/University/other/multi-ghc-travis/make_travis_yml_2.hs *cabal alex happy | \
tee .travis.yml

#~/Documents/University/other/multi-ghc-travis/make_travis_yml_2.hs *cabal happy-1.19.5 alex-3.1.7 | \
#sed 's/\$PATH/\/opt\/happy\/1.19.5\/bin:\/opt\/alex\/3.1.7\/bin:$PATH/' | \

