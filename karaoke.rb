require 'lambda_driver'

class KaraokeMachine
  KEYBOARD = %w(C C# D D# E F F# G G# A A# B).freeze

  def initialize(melody)
    @melody = melody
  end

  def transpose(amount)
#    @melody.gsub(/[A-G]#?/, &proc_scala(amount))
    @melody.gsub(/[A-G]#?/, &(KEYBOARD._.(:index) >> (amount % 12)._.(:+) >> method(:flip_mod) >> KEYBOARD._.(:at)))
  end

  private

#  def proc_scala(amount)
#    -> scala { (KEYBOARD._.(:index) >= (amount % 12)._.(:+) >= method(:flip_mod) >= KEYBOARD._.(:at)).(scala) || scala }
#  end

  def flip_mod(num)
    num % 12
  end
end

melody = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   "
melody2 = "F# G# A# B |A# G# F#   |A# B C# D# |C# B A#   |F#   F#   |F#   F#   |F#F#G#G#A#A#BB|A# G# F#   "
karaoke = KaraokeMachine.new(melody)
p karaoke.transpose(2)
