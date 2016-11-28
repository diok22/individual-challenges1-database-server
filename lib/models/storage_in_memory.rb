class StorageInMemory
  attr_reader :key_value

  def initialize
    @key_value = {}
  end
end
