

().play;

(degree: 15).play;

(degree: 15, dur: 0.1).play;

(degree: 15, dur: 10.1).play;

//:
(
{
	(0..14) do: { | note |
		(degree: note, dur: 0.2).play;
		0.2.wait;
	}
	
}.fork
)
//:
(
{
	(0..14) do: { | note |
		(degree: [note, note + 4.rand + 1], dur: 0.2).play;
		0.2.wait;
	}
	
}.fork
)
//:

Pbind (\dur, 0.2, \degree, Pseq ((0..14))).play;
//:
Pbind (\dur, 0.1, \degree, Pseq ([(0..14).scramble, (0..14)].flop, 4)).play;

//:
[(0..14).scramble, 10  ! 15].flop
//:
(1..5).scramble

//:

a = { WhiteNoise.ar (0.1)}.play;

//: