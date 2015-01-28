# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Bookmark should have a url, title, comment(optional), and a favorite value(optional)

Bookmark.create(
  url: "http://generalassemb.ly",
  title: "General Assembly",
  comment: "Seems like this WDI thing might be interesting")

Bookmark.create(
  url: "http://facebook.com",
  title: "Facebook",
  comment: "Ah, the book of faces...")

Bookmark.create(
  url: "http://guides.rubyonrails.org",
  title: "Rails GUides",
  comment: "Probably our bible for the next few weeks",
  favorite: true)