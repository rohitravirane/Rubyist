print "Thtring, pleathe!: "
user_input = gets.chomp # Getting User Input

=begin
We capture both "S" and "s" in the user’s input.
We could write separate if / else statements to handle this,
but we can also use .downcase! to convert the user’s input to all lower case.
That way, we only have to search for "s".
=end
user_input.downcase!

=begin
We want to check whether the user’s input contains an "s".
We can do that using Ruby’s .include? method,
which evaluates to true if it finds what it’s looking for and false otherwise.
=end
if user_input.include? "s"
=begin
When we find "s", we want Ruby to replace every instance of "s" it finds with "th".
We can do this with the .gsub! method, which stands for global substitution.
Syntax: rb string_to_change.gsub!(/s/, "th")
=end
  user_input.gsub!(/s/, "th")
  # Else Statement
else
  puts "Nothing to do here!"
end
# Now using the string interpolation for displaying string to the user.
puts "Your string is: #{user_input}"
