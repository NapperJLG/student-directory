def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create and empty array
  students = []
  #get the first name
  name = gets.chomp
  
  # while the name is not empty, repeat this code
  while !name.empty? do
    puts "enter the date of birth of the student:"
    dob = gets.chomp
    puts "Enter the students favourite hobby:"
    hobby = gets.chomp
    # add the student hash to the array
    students << {name: name, dob: dob, hobby: hobby, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    puts "Enter another student or press return again to finish:"
    name = gets.chomp
  end
#returns the array of students
students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each.with_index(1) do |student, index|
    puts "#{index}: #{student[:name]}, #{student[:dob]}, hobby: #{student[:hobby]} (#{student[:cohort]} cohort)" 
     
  end
end

def print_footer(students)
puts "Overall, we have #{students.count} great students "
end
# Nothing happens until we call the methods

students = input_students
print_header
print(students)
print_footer(students)