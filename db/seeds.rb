# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Token.destroy_all

Token.create name: 'abc'
Token.create name: 'cde'
Token.create name: 'krk'
Token.create name: 'bla'
Token.create name: 'qwe'
Token.create name: 'asd'
Token.create name: 'zxc'
