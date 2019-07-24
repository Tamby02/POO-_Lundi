require 'pry'

class EventCreator
	attr_accessor :title , :start_date , :email
		@email = []
	def initialize (titre, debut, gmail)
		@title = titre
		@start_date = debut
		@email=gmail
		@@EventCreator.new []
	end
	def greet
		puts "Salut, tu veux créer un événement ? Cool ! "	
	end
	def title_to_create
		puts "Commençons. Quel est le nom de l'événement ?"
		print ">"
		return @title = gets.chomp.to_s
	end
	def start_to_date
		puts "Super. Quand aura-t-il lieu ?"
		print ">"
		return @start_date = Time.parse(gets.chomp)
	end
	def email_to_create
		puts "Génial. Qui va participer ? Balance leurs e-mails"
		print ">"
		return @email = gets.chomp
	end
	def event_to_create
		return @@EventCreator.new=[@title, @start_date, @email]
	end
	def self.event_to_create
		return @@EventCreator
	end
end

binding.pry

=begin
			@Commençons. Quel est le nom de l'événement ? = gets.chomp.to_i
			@duration = gets.chomp
			return Event.new (@title , @start_date , @duration)
		end	
=end