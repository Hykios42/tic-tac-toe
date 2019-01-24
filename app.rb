require 'bundler'
Bundler.require
$:.unshift File.expand_path('./../lib/app', __FILE__)
require 'tic-tac-toe'

my_app = Tic.new