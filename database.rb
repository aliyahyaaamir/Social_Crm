require_relative "./contact_database"
# require_relative "./database_runner"

class Database
	attr_accessor :databasearray, :c

	def initialize
		@c
		@databasearray = []
	end

	def create (counter, firstname, lastname, email, notes)

		@c = Contact.new(counter, firstname, lastname, email, notes)

	end

	def add(counter)#either an argument or access the instance variable
		puts "hello"
		@databasearray[counter] = @c.contact
		puts @databasearray[counter] #id-1 can be the indice (i.e. I display 1 to the first user)
	end

	# def modify_contact(pass variable in) #need to access varibales

	# 	if some_variable == 'id'
	# 		call some method
	# 	elsif some_varibale == 'first name'
	# 		call some method in class #gets.chomp the input and feeds it
	# 		#the instance variable => that I need to update database
	# 	elsif some_varibale == 'last name'
	# 		call some method again
	# 	elsif some_variable == 'notes'
	# 		call some method again

	# end

	def display_all_contacts
		puts "hello back"
		@databasearray.each do |d|
				puts d #may need to use flatten if I create
		end
	end

	def display_particular_contact(x)
	counter2 = 0						   
	
		while (true)
			puts "hi"
		
			if ((@databasearray[counter2][1]) == (delete_name))###why does this not work
				puts "check"
				#@databasearray.delete_at(counter1)
				false
			end
			counter2 += 1
		end

	end


	def info_by_attribute

	end

	def delete_contact(delete_name)	#want to iterate over the 2-D array
									#second index
		counter1 = 0						   
	
		while (true)
			puts "hi"
		
			if ((@databasearray[counter1][1]) == (delete_name))###why does this not work
				puts "check"
				#@databasearray.delete_at(counter1)
				false
			end
			counter1 += 1
		end

	end

end 