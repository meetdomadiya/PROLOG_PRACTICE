/*facts*/

girl(priya).
girl(tiyasha).
girl(jaya).
can_cook(priya).
sing_a_song(ananya).
listens_to_music(rohit).

/*rules*/

listens_to_music(ananya) :- sing_a_song(ananya).
happy(ananya) :- sing_a_song(ananya).
happy(rohit) :- listens_to_music(rohit).
playes_guitar(rohit) :- listens_to_music(rohit).
