class Dictionary

  def initialize
    @entries = {}
  end

  def entries
    @entries
  end

  def keywords
    keywords = []
    @entries.each do |keyword, definition|
      keywords << keyword
    end
    keywords.sort!
    return keywords
  end

  def add(entry)
    if entry.class == String
      @entries[entry] = nil
      return true
    elsif entry.class == Hash
      @entries.merge!(entry)
      return true
    else
      puts "not a valid argument"
      return false
    end
  end

  def include?(word)
    @entries.keys.include?(word)
  end


  def find(word)
    match = @entries.select{ |key, value| key.include?(word) }
    return match
  end

  # Dont have the heart to delete this long, less effective solution :(
  # def find_hardway(word)
  #   match = {}
  #   @entries.each do |keyword, definition|
  #     if word == keyword
  #       match[keyword] = definition
  #     end
  #   end
  #   unless match == {}
  #     return match
  #   else
  #     @entries.each do |keyword, definition|
  #       prefix = keyword[0..1]
  #       if word == prefix
  #         match[keyword] = definition
  #       end
  #     end
  #     return match
  #   end
  # end


end
