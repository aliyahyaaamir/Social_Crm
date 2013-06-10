require_relative "./contact_database"
require_relative "./database"
class Runner

	def self.display_main_menu #this method can also be in runner

		puts "Welcome to the Ruby Crm!!!\n"


		puts "\n\n\nType 'add' in order to add a contact\n"
		puts "Type 'modify' to modify a contact attribute\n"
		puts "Type 'display all' to display all contacts\n"
		puts "Type 'display contact' to display a particular contact\n"
		puts "Type 'display attribute' to display all contacts according to that attribute\n"
		puts "Type 'delete' to delete contact\n"
		puts "Type 'exit' to leave the crm\n\n"

		get_input

	end

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

		db = Database.new
		new = true
		id = 0
		while (new == true)
		user_input = gets.chomp
		if user_input == 'add'

			puts "Enter your first name"
			firstname = gets.chomp

			puts "Enter your last name\n"
			lastname = gets.chomp
			
			puts "Enter your email\n"
			email = gets.chomp

			puts "Enter your notes\n"
			notes = gets.chomp

			contact = Contact.new(id: id, firstname: firstname, lastname: lastname, email: email, notes: notes)
			contact.save(db)
			id += 1
			puts "\e[H\e[2J"
			menu


		elsif user_input == 'modify'
			puts "Enter the firstname of the contact you wish to modify"
			modify_firstname = gets.chomp

			puts "Enter the contact attribute you wish to change"
			modify_attribute = gets.chomp

			puts "Enter the change you wish to make"
			attribute_change = gets.chomp

			db.modify_contact(modify_firstname, modify_attribute, attribute_change)


		elsif user_input == 'display all' #raise an exception here if there is no contact
				db.display_all_contacts
		
		elsif user_input == 'exit'
			new = false

		elsif user_input == 'display contact'
			puts "Enter the first name of the contact you wish to display"
			contact_name = gets.chomp
			db.display_particular_contact(contact_name)

		elsif user_input == 'display attribute'
			puts "Enter the attribute you wish to see all contacts according to"
			contact_attribute = gets.chomp
			db.info_by_attribute(contact_attribute)

		elsif user_input == 'delete'
			puts "Enter the first name of the user you wish to delete"
			delete_name = gets.chomp
			db.delete_contact(delete_name)
			puts "\e[H\e[2J"
			menu
			puts "#{delete_name} was deleted\n"


		end

	end
	end

end

Runner.display_main_menu

