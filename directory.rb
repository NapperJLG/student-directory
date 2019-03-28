@students = []

def print_menu
  puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else
      puts "I don't know what you mean, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def show_students
  print_header
  print_students_list
  print_footer
end

def interactive_menu
  
  loop do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    selection = gets.chomp
    
    case selection
    when "1"
      @students = input_students
    when "2"
      print_header
      print
      print_footer
    when "9"
      exit
    else
      puts "I dont know what you meant, try again"
    end
  end
end
    

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #get the first name
  name = gets.chomp
  
  # while the name is not empty, repeat this code
  while !name.empty? do
    puts "enter the date of birth of the student:"
    dob = gets.chomp
    puts "Enter the students favourite hobby:"
    hobby = gets.chomp
    # add the student hash to the array
    @students << {name: name, dob: dob, hobby: hobby, cohort: :november}
    
    if @students.count == 1
      puts "Now we have #{@students.count} student"
    else
      puts "Now we have #{@students.count} students"
    end
    # get another name from the user
    puts "Enter another student or press return again to finish:"
    name = gets.chomp
  end
#returns the array of students
@students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_students_list
  @students.each.with_index(1) do |student, index|
    puts "#{index}: #{student[:name]}, #{student[:dob]}, hobby: #{student[:hobby]} (#{student[:cohort]} cohort)" 
     
  end
end

def print_footer
puts "Overall, we have #{@students.count} great students "
end
# Nothing happens until we call the methods

interactive_menu