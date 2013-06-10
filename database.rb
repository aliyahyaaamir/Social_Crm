require "pry"
require_relative "./contact_database"

class Database
	attr_accessor :contacts

	def initialize
		@contacts = []
	end

	def modify_contact(name,attribute,change_in_attribute) #need to access varibales

			@contacts.each do |contact|
				if contact.firstname == name
					if attribute == "first name"
						contact.firstname = change_in_attribute
					elsif attribute == "last name"
						contact.lastname = change_in_attribute
					elsif attribute == "email"
						contact.email = change_in_attribute
					elsif attribute == "notes"
						contact.notes = change_in_attribute
					end
				end
			end
	end

	def display_all_contacts

		@contacts.each do |c|
			puts "ID: 	#{c.id}\nFirst Name: 	#{c.firstname}\nLast Name: 	#{c.lastname}\nEmail: 	#{c.email}\nNotes: 	#{c.notes}"
		end

	end

	def display_particular_contact(contact_name)
		@contacts.each do |contact|
			if contact.firstname == contact_name
				puts "ID: 	#{contact.id}\nFirst Name: 	#{contact.firstname}\nLast Name: 	#{contact.lastname}\nEmail: 	#{contact.email}\nNotes: 	#{contact .notes}"
			end
		end
	end


	def info_by_attribute(attribute)
		@contacts.each do |contact|

			if attribute == "last name"
				puts "\nFirst Name: 	#{contact.firstname}\nLast Name: 	#{contact.lastname}"
			elsif attribute == "email"
				puts "\nFirst Name: 	#{contact.firstname}\nEmail: 	#{contact.email}"
			elsif attribute == "notes"
				puts "\nFirst Name: 	#{contact.firstname}\nNotes: 	#{contact.notes}"
			end
		end
	end

	def delete_contact(delete_name)
	
		@contacts.each do |contact|
			if contact.firstname == delete_name
				contact.delete(self)
			end
		end
	end


end 