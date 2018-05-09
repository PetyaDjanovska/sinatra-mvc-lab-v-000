class PigLatinizer
  attr_accessor :text

  def initialize
  end

  def piglatinize(word)
    vowels = "aeiouAEIOU"
      if vowels.include?(word[0])
        word = word + "way"
      else
        word.each_char do |l|
          if !vowels.include?(l)
            word = word[1..-1] + word[0]
          else
            word += "ay"
            break
          end
        end
      end
    word
  end

end
