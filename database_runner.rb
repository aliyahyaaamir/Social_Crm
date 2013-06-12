require_relative "./contact_database"
require_relative "./database"
class Runner

	def self.menu


		puts "Welcome to the Ruby Crm!!!\n"


		puts "\n\n\nType 'add' in order to add a contact\n"
		puts "Type 'modify' to modify a contact attribute\n"
		puts "Type 'display all' to display all contacts\n"
		puts "Type 'display contact' to display a particular contact\n"
		puts "Type 'display attribute' to display all contacts according to that attribute\n"
		puts "Type 'delete' to delete contact\n"
		puts "Type 'exit' to leave the crm\n\n"

	end



	def self.get_input

		menu
		db = Database.new
		new = true
		id = 0
		while (new == true)
		user_input = gets.chomp
		if user_input.downcase == 'add'
			puts "Enter your first name"
			firstname = gets.chomp.downcase 

			puts "Enter your last name\n"
			lastname = gets.chomp.downcase
			
			puts "Enter your email\n"
			email = gets.chomp.downcase

			puts "Enter your notes\n"
			notes = gets.chomp.downcase

			contact = Contact.new(id: id, firstname: firstname, lastname: lastname, email: email, notes: notes)
			contact.save(db)
			id += 1
			puts "\e[H\e[2J"
			puts "-----------------------------------"
			puts "#{firstname} was saved as a contact"
			puts "-----------------------------------"

			menu


		elsif user_input == 'modify'
			puts "Enter the firstname of the contact you wish to modify"
			modify_firstname = gets.chomp.downcase

			puts "Enter the contact attribute you wish to change"
			modify_attribute = gets.chomp.downcase

			puts "Enter the change you wish to make"
			attribute_change = gets.chomp.downcase

			db.modify_contact(modify_firstname, modify_attribute, attribute_change)


		elsif user_input == 'display all' #raise an exception here if there is no contact
				puts db.display_all_contacts
		
		elsif user_input == 'exit'
			new = false

		elsif user_input == 'display contact'
			puts "Enter the first name of the contact you wish to display"
			contact_name = gets.chomp.downcase
			db.display_particular_contact(contact_name)

		elsif user_input == 'display attribute'
			puts "Enter the attribute you wish to see all contacts according to"
			contact_attribute = gets.chomp.downcase
			db.info_by_attribute(contact_attribute)

		elsif user_input == 'delete'
			puts "Enter the first name of the user you wish to delete"
			delete_name = gets.chomp.downcase
			puts "\e[H\e[2J"

			if (db.delete_contact(delete_name) == true)
				puts "-----------------------------------"
				puts "#{delete_name} was deleted as a contact\n"
				puts "-----------------------------------"
			else
				puts "-----------------------------------"
				puts "#{delete_name} was not found in contacts\n"
				puts "-----------------------------------"
			end
			menu
		end

	end
	end

end

Runner.get_input

