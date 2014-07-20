class Book 
	attr_accessor :title, :author, :status
	# status can be :available, :issued,  :not_availanle


	def issue
		self.status = :issued
		puts "Book is issued"
	end

	def return
		self.status = :return
		puts "Book is reutrned"
	end
end

class Library

	def initialize
		@book_list = Array.new
	end
	
	attr_accessor :book_list
	
	def add_book book
		@book_list << book
	end

	def lend_book book
		book = search_book(book)
		return false unless book
		book.issue
	end

	def search_book (book)
		@book_list.include? book
	end

	def return_book book
		book.return
	end

end

