#require_relative 'lib/user'
#require 'bundler'
require 'pry'

class User
	attr_accessor :email, :age
	@@all_user = []
		def initialize (email_to_send, age_old)
			@email= email_to_send
			@age = age_old
			@@all_user << [@email, @age]
			#return @@all_user << self
		end
		def all
			return @@all_user 
		end

		def self.all
			return @@all_user
		end
		def self.find_by_email(email_to_find)
			#email_to_find = gets.chomp
			@@all_user.each do|email_to_find|
				
				if email_to_find == @email
				puts "Voici l'age du User trouvé : #{user.age}"
				else
					
				puts "Mauvais email"
				return false
				end
			end
			#return find_by_email
		end
end

binding.pry
puts "end of file"

#User.all.each do |user|email.age(user)
#Bundler.require
#end