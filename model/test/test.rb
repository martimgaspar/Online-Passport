# require_relative '../Passport.rb'
# require_relative '../RecordBlockChain.rb'
# require_relative '../RecordDatabase.rb'
# require_relative '../RecordIO.rb'
# require_relative '../VerificationSystem.rb'

# # testPass = Passport.new("asreedh", "Aneesh", "N/A", "Sreedhara", "02/13/2003")
# # puts testPass.getId
# # puts testPass.getFirstName
# # puts testPass.getMiddleName
# # puts testPass.getLastName
# # puts testPass.getDateOfBirth

# # testPass.addUseRecord("Geneva", "01/01/2020")
# # testPass.addUseRecord("Jakarta", "01/01/2020")

# # useRecords = testPass.getUseRecords
# # blockArray = useRecords.blocks

# # puts blockArray[1].getLocation
# # puts blockArray[1].getDate
# # puts blockArray[2].getLocation
# # puts blockArray[2].getDate
# # puts useRecords.isValidChain

# # blockArray[1].location = "totally not Geneva lol"
# # puts useRecords.isValidChain

# # blockArray[1].location = "Geneva"
# # puts useRecords.isValidChain
# # puts testPass.toString

# # db = RecordDatabase.new('/home/runner/Online-Passport/model/database_files/test_records.txt')
# # puts db.checkPassport(testPass)

# # testPass2 = Passport.new("kpeters4", "Karl", "N/A", "Peterson", "01/01/2003")
# # puts db.checkPassport(testPass2)

# # db.updatePassport(testPass2)

# # system = VerificationSystem.new
# # system.addDatabase('/home/runner/Online-Passport/model/database_files/test_db_1.txt')
# # system.addDatabase('/home/runner/Online-Passport/model/database_files/test_db_2.txt')
# # system.addDatabase('/home/runner/Online-Passport/model/database_files/test_db_3.txt')

# # sysPass1 = Passport.new("asreedh", "Aneesh", "N/A", "Sreedhara", "01/01/2002")
# # sysPass2 = Passport.new("kpeters4", "Karl", "N/A", "Peterson", "01/01/2002")
# # sysPass3 = Passport.new("mTaylor", "Matthew", "N/A", "Taylor", "01/01/2002")
# # sysPass4 = Passport.new("gBaskel", "Graham", "N/A", "Baskel", "01/01/2002")
# # sysPass5 = Passport.new("rBlox", "Road", "N/A", "Blox", "01/01/2002")


# # puts "CHECK"
# # db.updatePassport(sysPass1)

# # system.updatePassport(sysPass1)
# # system.updatePassport(sysPass2)
# # system.updatePassport(sysPass3)
# # system.updatePassport(sysPass4)
# # system.updatePassport(sysPass5)

# system = VerificationSystem.new

# sysPass1 = Passport.new("asreedh", "Aneesh", "N/A", "Sreedhara", "01/01/2002")
# sysPass2 = Passport.new("kpeters4", "Karl", "N/A", "Peterson", "01/01/2002")
# sysPass3 = Passport.new("mTaylor", "Matthew", "N/A", "Taylor", "01/01/2002")
# sysPass4 = Passport.new("gBaskel", "Graham", "N/A", "Baskel", "01/01/2002")
# sysPass5 = Passport.new("rBlox", "Road", "N/A", "Blox", "01/01/2002")

# system.updatePassport(sysPass2)
# system.updatePassport(sysPass1)
# system.updatePassport(sysPass3)
# system.updatePassport(sysPass4)
# system.updatePassport(sysPass5)

# system.addUseRecord(sysPass1, "Geneva", "someDate")