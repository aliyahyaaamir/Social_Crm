require "pry"
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

	def modify_contact(name,attribute) #need to access varibales
			@databasearray.each do |b|
				b.each do |c|
					if c == name
					puts b.index(c)
					end
				end
			end

	end

	def display_all_contacts
		puts "hello back"
		# @databasearray.each do |d|
		# 		puts d #may need to use flatten if I create

		count1 = 0

		while(true)
			var = true
			@databasearray[count1]
				while(var)
					count = 0
					puts "\nID:             #{@databasearray[count1][count]}"
					count += 1
					puts "First Name:     #{@databasearray[count1][count]}"
					count += 1
					puts "Last Name:      #{@databasearray[count1][count]}"
					count += 1
					puts "Email:          #{@databasearray[count1][count]}"
					count +=1
					puts "Notes:          #{@databasearray[count1][count]}"
					var = false
				end
				count1 += 1
				if count1 == @databasearray.length
					break
				end
		end

	end

	def display_particular_contact(x)
	counter2 = 0						   
	
		while (true)
			if ((@databasearray[counter2][1]) == (delete_name))###why does this not work
				@databasearray.delete_at(counter2)
				break
			end
			# binding.pry
			counter2 += 1
		end

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