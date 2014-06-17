require 'lambda_driver'

class KaraokeMachine
  def initialize(melody)
  end
end

melody = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   "
melody2 = "F# G# A# B |A# G# F#   |A# B C# D# |C# B A#   |F#   F#   |F#   F#   |F#F#G#G#A#A#BB|A# G# F#   "
karaoke = KaraokeMachine.new(melody)
p karaoke.transpose(-1)
