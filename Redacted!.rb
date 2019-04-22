=begin
In this project we’ll make a program that
searches a string of text for your name and, if it
finds it, replaces it with the word “redacted.” Just
like that, you’re a spy!
=end

# User input
puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

=begin
Ruby has a built-in method for this called
.split; it takes in a string and returns an array.
If we pass it a bit of text in parentheses, .split
will divide the string wherever it sees that bit of
text, called a delimiter.
=end

words = text.split(" ")

# Time to break out our iterators to go through the user’s text.
words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end
