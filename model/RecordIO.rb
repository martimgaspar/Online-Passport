class RecordIO

  def self.readPassportsFromFile(filepath)
    passports = Array.new
    size = 0
    recordNum=0

    file = File.read(filepath)
    splitFile = file.split("\n")

    for line in splitFile
      if line[0]=='*'
        recordNum = 0
        line = line.split("-")
        passports[size] = Passport.new(line[0][1..-1], line[1], line[2], line[3], line[4])
        size += 1
      elsif line.strip.length!=0
        line = line.strip
        line = line.split("-")
        passports[size - 1].addUseRecordWithPrevHash(line[0], line[1], line[2])
      end
    end

    return passports
  end

  def self.writePassportsToFile(filepath, passports)
    outString = ""
    for passport in passports
      newLine = passport.toString
      outString = outString + newLine.strip + "\n"
    end
    File.write(filepath, outString.chomp)
  end

end