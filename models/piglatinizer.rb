class PigLatinizer
  attr_accessor :text

  def initialize
  end

  def piglatinize (word)
    vowels = "aeiouAEIOU"
      if vowels.include?(word[0])
        word = word + "way"
      else
        word.each_char.with_index do |l,i|
            while !vowels.include?(l) do
              word = word[1..-1] + word[i] + "ay"
            end
          end
        end
      end
    word
  end

end
