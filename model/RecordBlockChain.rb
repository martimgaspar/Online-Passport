# requires digest for hashing capability
require 'digest'

class RecordBlockChain
  
  attr_accessor :blocks, :size

  def initialize
    @blocks = Array.new
    genesisBlock = RecordBlock.new("genesis", "genesis", "genesis")
    @blocks[0] = genesisBlock
    @size = 1
  end

  def addBlock(location, date)
    previousHash = getLastBlock.getHash
    newBlock = RecordBlockChain::RecordBlock.new(location, date, previousHash)
    @blocks[@size] = newBlock
    @size += 1
  end

  def addBlockWithPrevHash(location, date, hash)
    previousHash = hash
    newBlock = RecordBlockChain::RecordBlock.new(location, date, previousHash)
    @blocks[@size] = newBlock
    @size += 1
  end
  
  def getLastBlock
    return @blocks[size - 1]
  end

  def isValidChain

    for i in 1..@size-1
      currentBlock = @blocks[i]
      prevBlock = @blocks[i - 1]
      if prevBlock.getHash != currentBlock.getPreviousHash
        return false
      end
    end

    return true

  end

  def toString
    retString = ""
    # for loop starts at 1 because block at index 0 is root/genesis block
    for i in 1..@size-1
      retString += "\t" + @blocks[i].toString
      if i != @size-1
        retString += "\n"
      end
    end
    
    return retString
  end

  class RecordBlock

    attr_accessor :location, :date, :previousHash

    def initialize(location, date, previousHash)
      @previousHash = previousHash
      @location = location
      @date = date
    end

    def getHash
      return Digest::SHA1.hexdigest (@location + @date + @previousHash)
    end

    def getPreviousHash
      return @previousHash
    end

    def getLocation
      return @location
    end

    def getDate
      return @date
    end

    def toString
      return @location + "-" + @date + "-" + @previousHash
    end
  end
end