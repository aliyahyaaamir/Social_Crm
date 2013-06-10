require "pry"
require_relative "./contact_database"
# require_relative "./database_runner"

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

	def display_particular_contact(x)



	end


	def info_by_attribute

	end

	def delete_contact(delete_name)	#want to iterate over the 2-D array
									#second index
		counter1 = 0						   
	
		while (true)
			if ((@databasearray[counter1][1]) == (delete_name))###why does this not work
				@databasearray.delete_at(counter1)
				break
			end
			# binding.pry
			counter1 += 1
		end

	end

end 