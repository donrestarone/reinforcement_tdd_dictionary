class Dictionary
  def initialize
    @entries = {}
  end

  def add(attribute)
    if attribute.class == Hash
      @entries.merge!(attribute)
    else
      @entries[attribute] = nil
    end
    return @entries
  end

  def keywords
    key_words = @entries.keys
    sorted_key_words = key_words.sort_by {|keyword| keyword}
  end

  def entries
    return @entries
  end

  def include?(word)
    @entries.include?(word)
  end

  def find(key_word)
    query_result =  @entries.select {|key,value| key.start_with?("#{key_word}")}
  end
end

word_book = Dictionary.new
word_book.add('fish' => 'aquatic animal')
word_book.add('fishies' => 'aquatic animal')
word_book.add('fiii')
word_book.add('fishies')
#word_book.find('fish')
p word_book.find('f')
