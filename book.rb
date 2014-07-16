@endall =true
@library=[] #array of book hash


# class Book 
# 	attr_accessor :title, :author, :status
# 	# status can be :available, :issued,  :not_availanle
# 	def issue
# 		self.status = :issued
# 	end
# end

# class library

# 	def intialize
# 		@book_list = Array.new
# 	end
	
# 	attr_accessor :book_list
	
# 	def add_book(book)
# 			@book_list << book
# 	end

# 	def lend_book book
# 		book = search_book(book)
# 		return false unless book
# 		book.issue
# 	end

# 	def search_book (book)
# 		@book_list.include? book 
# 	end

# 	def return_book book
# 		book.return
# 	end

# end

while @endall do
	puts "1.Enter the book record"
	puts "2.Enter the name of book to search"
	puts "3.Enter the author to search"
	puts "4.List the book and its auhtor"
	puts "Enter y to Exit"
	puts "Enter your choice"
	choice = gets.chomp

	case choice
	when '1'
		endwhile = true
		book = {}

		def book(btitle,author) #hash of book title and author
		  {
		    btitle:btitle,
		    author:author
		  }	  
		end

		while endwhile==true do  #Choice to Enter the book 
		    btitle = ""
		    puts "Title of the book"
		    btitle = gets.chomp
		    puts "Enter the author of #{btitle}"
		    author = gets.chomp
		    book(btitle,author)
		    @library.push(book(btitle,author))    
		    puts "DO you want to enter another book (Press y to continue)"
		    endwhile =gets.chomp
		end
		puts "The book is admitted to Library"

	when '2'
		def find_by_title (title) 
		  if @library.find { |book| "#{book[:btitle]}" == title }
		   puts  " found" 
		  else
		    puts "Book not Found"
		  end
		end
		endsearch= "n"
		while endsearch == "n"  do
		puts "Enter the name of the book to search"
		@searchtitle=gets.chomp
		puts find_by_title(@searchtitle)
		puts "Do you want to continue your search (Press y to exit)"
		endsearch = gets.chomp
	end
	when '3'
		def find_by_author (author) 
		  if @library.find {   |book| "#{book[:author]}" == author  }
		  		puts "Books available"
		  	available_books = @library.keep_if{|h| h[:author]== author}
		  	puts available_books.inspect
		  else
		    puts "The library has no book by #{author} "
		  end
		end
		endsearch= "n"
		while endsearch == "n"  do
		puts "Enter the name of author to search"
		@searchtitle=gets.chomp
		puts find_by_author(@searchtitle)
		puts "Do you want to continue your search (Press y to exit)"
		endsearch = gets.chomp
	end
	when '4'
		puts "The library has following"
		@library.each do |book|
	  		puts  "#{book[:btitle]} is written by #{book[:author]} \n " 
	 	end
	when 'y'
		@endall = "n"
	else 
		puts "Invalid Choice"
	end

end
