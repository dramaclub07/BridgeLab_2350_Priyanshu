class Book
    def initialize(title, author, price)
        @title = title
        @author = author
        @price = price
    end

    def display_details
        puts "Title: #{@title}"
        puts "Author: #{@author}"
        puts "Price: #{@price}"
    end
end

print "Enter the book title: "
title = gets.chomp
print "Enter the author's name: "
author = gets.chomp
print "Enter the book price: "
price = gets.chomp.to_f

book = Book.new(title, author, price)
book.display_details