#!/usr/bin/env bash

rspec ./spec/*_spec.rb &&
  ruby ./lib/authentication_service.rb &&
  ruby ./lib/shopping_cart.rb
