require "test/unit"
require "./database"
require "./contact_database"

class Database_tester < Test::Unit::TestCase

	def setup
		@db = Database.new
		@contact = Contact.new(id: 0, firstname: "William", lastname: "James", email: "will@bit.com", notes: "notes")
		# @contact2 = Contact.new(id: 1, firstname: "Michael", lastname: "Kors", email: "kors@outlook.com", notes: "12345")
	end

	def test_database_initialize

		assert @db.contacts.is_a?(Array)

	end

	def test_modify_contact

		@db.modify_contact("William", "first name", "Tim")
		assert_equal "Tim" , @contact.firstname

	end

	def test_display_all_contacts

		assert_equal @db.display_all_contacts

	end

	# def test_display_particular_contact

		
	# end


end