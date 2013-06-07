class Contact
attr_accessor :id, :firstname, :lastname, :email, :notes, :contact, :b

	 def initialize(id, firstname, lastname, email, notes)

		@id = id
		@firstname = firstname
		@lastname = lastname
		@email = email
		@notes = notes

		@contact = [@id, @firstname, @lastname, @email, @notes]
		#pass in arguments/variables approach it should work
	end

	def display_contact
		puts "ID:             #{@id}"
		puts "First Name:     #{@firstname}"
		puts "Last Name:      #{@lastname}"
		puts "Email:          #{@email}"
		puts "Notes:          #{@notes}"

		#@contact = [@id, @firstname, @lastname, @email, @notes]

	end

	def create_id(counter)

		@id = counter

	end

end