def get_user
  puts "enter username: "
  user_name = gets.chomp
  print "enter password: "
  user_pass = gets.chomp
end

def user_equals_pass(user_name, user_pass)
  if (user_name == user_pass)
    puts true
  else
    puts false
  end
end

def user_length(user_name)
  if user_name.length >= 6
    puts true
  else
    puts false
  end
end

def includes_special(user_name)
  if user_name[/[!#$]/]
    puts true
  else
    puts false
  end
end

def includes_special(user_name)
  if user_name.include? "$" or user_name.include? "!" or user_name.include? "#"
    puts true
  else
    puts false
  end
end

def no_includes_special(user_name)
  if !user_name.include? "$" and !user_name.include? "!" and !user_name.include? "#"
    puts true
  else
    puts false
  end
end

# Function that checks Username and Password
def validate_user
  puts "enter username: "
  user_name = gets.chomp
  print "enter password: "
  user_pass = gets.chomp
  if user_name.length >= 6 and !user_name.include? "$" and !user_name.include? "!" and !user_name.include? "#"
    puts "Username is good"
  else
    puts "Username must be at least 6 characters and not contain '#$!'"
  end
  if user_pass.length >=6 and user_pass[/[!#$]/]
    puts "Password is good"
  else
    puts "Password must be at lease 6 characters and MUST contain '#, $ or !'"
  end
end
