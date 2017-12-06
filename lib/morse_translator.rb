class Translator

  def initialize
    @alphabet = {
    "a" => ".-",
    "b" => "-...",
    "c" => "-.-.",
    "d" => "-..",
    "e" => ".",
    "f" => "..-.",
    "g" => "--.",
    "h" => "....",
    "i" => "..",
    "j" => ".---",
    "k" => "-.-",
    "l" => ".-..",
    "m" => "--",
    "n" => "-.",
    "o" => "---",
    "p" => ".--.",
    "q" => "--.-",
    "r" => ".-.",
    "s" => "...",
    "t" => "-",
    "u" => "..-",
    "v" => "...-",
    "w" => ".--",
    "x" => "-..-",
    "y" => "-.--",
    "z" => "--..",
    " " => " ",
    "1" => ".----",
    "2" => "..---",
    "3" => "...--",
    "4" => "....-",
    "5" => ".....",
    "6" => "-....",
    "7" => "--...",
    "8" => "---..",
    "9" => "----.",
    "0" => "-----"  
    }

    @alp = {
        ".-"   => "a",
        "-..." => "b",
        "-.-." => "c",
        "-.."  => "d",
        "."    => "e",
        "..-." => "f",
        "--."  => "g",
        "...." => "h",
        ".."   => "i",
        ".---" => "j",
        "-.-"  => "k",
        ".-.." => "l",
        "--"   => "m",
        "-."   => "n",
        "---"  => "o",
        ".--." => "p",
        "--.-" => "q",
        ".-."  => "r",
        "..."  => "s",
        "-"    => "t",
        "..-"  => "u",
        "...-" => "v",
        ".--"  => "w",
        "-..-" => "x",
        "-.--" => "y",
        "--.." => "z",
        " "    => " "      
    }

  end

  def eng_to_morse(user_input)
    answer = ""
    user_input.each_char { |c| answer << @alphabet[c.downcase]}
    answer
  end

  def from_file(file)
    english = File.open("lib/#{file}", 'r')
    answer = ""
    english.readline.chomp.each_char do |line|
      answer += eng_to_morse(line)
    end
    answer
  end

  def morse_to_english(user_input)
    answer = ""
    morse = user_input.split(" ")
    morse.each_with_index { |m, i| answer << @alp[m]}
    answer
  end

end














