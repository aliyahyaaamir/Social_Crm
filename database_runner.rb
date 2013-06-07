require_relative "./contact_database"
require_relative "./database"
class Runner
# attr_accessor :c
	def initialize
	
	end

	def self.run
		#a = Contact.new #don't need to call this yet
		display_main_menu
	end

	def self.display_main_menu #this method can also be in runner

		puts "Welcome to the Ruby Crm!!!\n"


		puts "\n\n\nType 'add' in order to add a contact\n"
		puts "Type 'modify' to modify a contact attribute\n"
		puts "Type 'display all' to display all contacts\n"
		puts "Type 'display contact' to display contact\n"
		puts "Type 'display attribute' to display attribute\n"
		puts "Type 'delete' to delete contact\n"
		puts "Type 'exit' to leave the crm\n\n"

		get_input

	end

	def self.menu


		puts "Welcome to the Ruby Crm!!!\n"


		puts "\n\n\nType 'add' in order to add a contact\n"
		puts "Type 'modify' to modify a contact attribute\n"
		puts "Type 'display all' to display all contacts\n"
		puts "Type 'display contact' to display contact\n"
		puts "Type 'display attribute' to display attribute\n"
		puts "Type 'delete' to delete contact\n"
		puts "Type 'exit' to leave the crm\n\n"

	end



	def self.get_input

		# @c = Contact.new
		b = Database.new
		new = true
		counter = 0
		while (new == true)
		user_input = gets.chomp
		if user_input == 'add'
			counter += 1 #may not even need the create ID method
			# c.create_id(counter)

			puts "Enter your first name"
			firstname = gets.chomp

			puts "Enter your last name\n"
			lastname = gets.chomp
			
			puts "Enter your email\n"
			email = gets.chomp

			puts "Enter your notes\n"
			notes = gets.chomp

			b.create(counter, firstname, lastname, email, notes)
			b.c.create_id(counter)
			b.add(counter)
			puts "\e[H\e[2J"
			menu


		elsif user_input == 'modify'
			puts "Enter the firstname of the contact you wish to modify"
			modify_firstname = gets.chomp

			puts "Enter the contact attribute you wish to change"
			modify_attribute = gets.chomp

		elsif user_input == 'display all' #raise an exception here if there is no contact
				b.display_all_contacts
		elsif user_input == 'exit'
			new = false

		elsif user_input == 'display contact'
			b.c.display_contact #may need a puts statement in order to
							  #handle multiple contacts
							  #first need to store these ID's in
							  #the database
		elsif user_input == 'delete'
			puts "Enter the first name of the user you wish to delete"
			delete_name = gets.chomp
			b.delete_contact(delete_name)
		end

	end
	end

end

Runner.run

