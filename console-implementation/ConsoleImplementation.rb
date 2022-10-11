require_relative '../model/VerificationSystem.rb'
require_relative '../model/Passport.rb'
require_relative '../model/RecordIO.rb'

class ConsoleImplementation

  attr_accessor :verificationSystem 

  def initialize
    @verificationSystem = VerificationSystem.new
    runProgram
  end

  def runProgram
    
    puts "--------------------------"
    puts "Passport System Started..."
    puts "--------------------------"

    puts "Please enter the name of \n your passport file, or N to create a new one:"

    filepath = gets.chomp

    if filepath=="N"
      puts "--------------------------"
      puts "Enter your passport ID"
      id = gets.chomp
      puts "Enter your FIRST name"
      firstName = gets.chomp
      puts "Enter your MIDDLE name or N/A"
      middleName = gets.chomp
      puts "Enter your LAST name"
      lastName = gets.chomp
      puts "Enter your date of birth"
      dateOfBirth = gets.chomp
      puts "Enter the filename you'd \nlike to save this digital passport to"
      filepath = "/home/runner/Online-Passport/console-implementation/passport_files/" + gets.chomp
      newPass = Passport.new(id, firstName, middleName, lastName, dateOfBirth)
      File.write(filepath, newPass.toString)
      @verificationSystem.updatePassport(newPass)
    else
      filepath = "/home/runner/Online-Passport/console-implementation/passport_files/" + filepath
      passport = RecordIO.readPassportsFromFile(filepath)[0]
      File.write(filepath, passport.toString)
    end
    puts "Thank you..."

    passport = RecordIO.readPassportsFromFile(filepath)[0]

    puts "--------------------------"

    puts "Would you like to... \n(V)erify this passport \n(A)dd a new use record \n(E)xit the system"

    action = gets.chomp
    puts "--------------------------"

    if action=="V"
      puts "Thank you..."
      puts "We have conducted a test to verify your passport file"
      puts "--------------------------"
      puts ("Verified: " + @verificationSystem.verifyPassport(passport).to_s)
      puts "--------------------------"
    elsif action=="A"
      puts "Thank you..."
      puts "Please enter the country of use"
      location = gets.chomp
      puts "Please enter the date of use"
      date = gets.chomp
      
      @verificationSystem.addUseRecord(passport, location, date)
      passArr = []
      passArr << passport
      RecordIO.writePassportsToFile(filepath, passArr)
      puts "--------------------------"
      puts "Thank you. This record has been saved"
      puts "--------------------------"
    end
    puts "Program ending..."
    puts "Click ENTER to close..."
    gets
    puts "--------------------------"

  end

end