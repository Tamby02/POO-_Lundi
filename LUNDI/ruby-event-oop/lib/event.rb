require 'time'
require 'pry'
class Event
	attr_accessor :start_date, :duration , :title ,:attendees
	  @attendees = []
		def initialize (date_to_start,duration_of_event, title_of_event, attendees_of_event)
			@start_date = Time.parse(date_to_start)
			@duration = duration_of_event
			@title = title_of_event
			@attendees = attendees_of_event
			return @start_date ,@duration ,@title, @attendees
		end
		def postpone_24h 
			 @start_date = start_date + 86400
		end
		def end_date 
			return @start_date + duration*60
		end
		def is_past?
			if @start_date< Time.now
				return true
			else
				return false
			end
		end
		def is_futur?
			return !self.is_past?
		end
		def is_soon?
			if @start_date < Time.now + 30*60
				 true
			else 
				return false
			end
		end
		def to_s
			puts "Titre : #{@title}"
			puts "Date de début : #{@start_date}"
			puts "Durée : #{@duration} minutes"
			puts "Invités : #{@attendees}"
		end
end

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

#Event1 = Event.new("2019-01-06 14:00", 30)
#Event2 = Event.new("2019-01-13 09:00", 10, "standup quotidien", ["truc@machin.com", "bidule@chose.fr"])
#Event3= Event2.postpone_24h

 
binding.pry