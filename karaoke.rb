require 'lambda_driver'

class KaraokeMachine
  KEYBOARD = %w(C C# D D# E F F# G G# A A# B).freeze

  def initialize(melody)
    @melody = melody
  end

  def transpose(amount)
    flip_mod = -> num { num % 12 }
    @melody.gsub(/[A-G]#?/, &KEYBOARD._.(:index) >> (amount % 12)._.(:+) >> flip_mod >> KEYBOARD._.(:at))
  end

  #lambda_driver使わないバージョン
  def not_functional(amount)
    @melody.gsub(/[A-G]#?/) {|exp|
      idx = KEYBOARD.index(exp)
      mod = (amount % 12) + idx
      ans_idx = mod % 12
      KEYBOARD[ans_idx]
    }
  end
end

melody = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   "
melody2 = "F# G# A# B |A# G# F#   |A# B C# D# |C# B A#   |F#   F#   |F#   F#   |F#F#G#G#A#A#BB|A# G# F#   "
karaoke = KaraokeMachine.new(melody)
p karaoke.transpose(-1)
