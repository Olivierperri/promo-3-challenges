require_relative '../config/application'
require_relative '../models/post'
require_relative '../models/user'

require 'faker'
require 'nokogiri'
require 'open-uri'

puts "Seeding database for Y comboinator, based on #{https://news.ycombinator.com/}. Let's rock the party!"
puts '-'*50

puts 'Removing data...'
User.delete_all
Post.delete_all

puts 'Generating user, and post...'
require  'faker'



# TODO: Your code goes here
# 1. create fake users
# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users
