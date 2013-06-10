class Contact
	attr_accessor :id, :firstname, :lastname, :email, :notes

	 def initialize(args)#(id, firstname, lastname, email, notes)

	 		@id, @firstname, @lastname, @email, @notes = args[:id], args[:firstname], args[:lastname], args[:email], args[:notes]
	end

	def save(db)
		db.contacts << self
	end

	def display_contact
		puts "ID:             #{id}"
		puts "First Name:     #{firstname}"
		puts "Last Name:      #{lastname}"
		puts "Email:          #{email}"
		puts "Notes:          #{notes}"

	end

end