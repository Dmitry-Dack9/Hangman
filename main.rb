require_relative 'lib/console_interface'
require_relative 'lib/game'
require 'colorize'

word = File.readlines(__dir__ + '/data/words.txt', encoding: 'UTF-8', chomp: true).
  sample.
    upcase

game = Game.new(word)
console_interface = ConsoleInterface.new(game)

puts "Привет!".colorize(color: :light_blue)

until game.over?
  console_interface.print_out

  letter = console_interface.get_input

  game.play!(letter)
end

console_interface.print_out
