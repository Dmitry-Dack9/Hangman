class ConsoleInterface
  FIGURES = Dir[
    File.join(__dir__, "..", "data", "figures", "*.txt")
    ].
      sort.
        map {|file_name| File.read(file_name)}

  def initialize(game)
    @game = game
  end

  def print_out
    puts "Слово: #{word_to_show}".colorize(color: :light_blue)

    puts "#{figure}".colorize(color: :yellow)

    puts "Ошибки #{@game.errors_made}: #{errors_to_show}".colorize(color: :red)

    puts "У вас осталось ошибок: #{@game.errors_allowed}"

    if @game.won?
      puts "Вы выиграли"
    elsif @game.lost?
      puts "Вы проиграли, загаданное слово: #{@game.word}"
    end
  end

  def figure
    return FIGURES[@game.errors_made]
  end

  def word_to_show
    result = @game.letters_to_guess.map do |letter|
      if letter == nil
        '*'
      else
        letter
      end
    end
    result.join(' ')
  end

  def errors_to_show
    @game.errors.join(', ')
  end

  def get_input
    print "Введите следующую букву: "

    letter = gets[0].upcase
  end
end
