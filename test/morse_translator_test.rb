require 'minitest/autorun'
require 'minitest/emoji'
require './lib/morse_translator'

class TranslatorTest < Minitest::Test
  attr_reader :tran

  def setup 
    @tran = Translator.new
  end

  def test_instance_of_Tanslator_class
    assert_instance_of Translator, tran
  end

  def test_eng_to_morse
    expect = "......-...-..--- .-----.-..-..-.."
    assert_equal expect, tran.eng_to_morse("hello world")
  end

  def test_eng_to_morse_with_numbers
    expect = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expect, tran.eng_to_morse("There are 3 ships")
  end
end



  # $ translator = Translate.new 
  # => #<Translate:0x007fa1ab98cac0>
  # $ translator.eng_to_morse("Hello World") 
  # => "......-...-..--- .-----.-..-..-.."
  # $ translator.eng_to_morse("There are 3 ships") 
  # => "-......-.. .-.-.. ...-- ..........--...."