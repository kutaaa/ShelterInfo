# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts Rails.env

table_names = %w(shelters)#テーブルの名前だから複数形で入れておく
puts table_names

table_names.each do |table_name|
	path = Rails.root.join("db/seeds", Rails.env, table_name + ".rb")
	puts path
	if File.exist?(path)
		puts "Creating #{table_name}..."
		require path
	end
end
