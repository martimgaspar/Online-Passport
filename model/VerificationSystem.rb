require_relative 'RecordDatabase.rb'
require_relative 'Passport.rb'
require_relative 'RecordBlockChain.rb'

class VerificationSystem

  attr_accessor :databases

  def initialize
    @databases = Array.new

    addDatabase('/home/runner/Online-Passport/model/database_files/test_db_1.txt')
    addDatabase('/home/runner/Online-Passport/model/database_files/test_db_2.txt')
    addDatabase('/home/runner/Online-Passport/model/database_files/test_db_3.txt')

  end

  def addDatabase(filepath)
    @databases.push RecordDatabase.new(filepath)
  end

  def updatePassport(pass)
    for db in @databases
      db.updatePassport(pass)
    end
  end

  def addUseRecord(pass, location, date)
    pass.addUseRecord(location, date)
    updatePassport(pass)
  end

  def verifyPassport(pass)
    useRecords = pass.getUseRecords
    if !useRecords.isValidChain
      return false
    end
    for db in @databases
      if !db.checkPassport(pass)
        return false
      end
    end
    return true
  end

  # def checkDatabaseIntegrity
  #   # TODO
  #   return true 
  # end

end