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

  def test_from_file_loads_given_file
    expect = ".. .--- ..-. .- ..-....-..."
    assert_equal expect, tran.from_file("input.txt")
  end

  def test_morse_code_to_english
    expect = "hello world"
    actual = ".... . .-.. .-.. ---  .-- --- .-. .-.. -.."
    assert_equal expect, tran.morse_to_english(actual) 
  end
end



# $ translator = Translate.new 
#   => #<Translate:0x007fa1ab98cac0>
#   $ translator.morse_to_eng("......-...-..--- .-----.-..-..-..") 
#   => "hello world"