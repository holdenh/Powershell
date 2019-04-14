# both songs list wordfor word. First:first:second:second:third:third
# and so on.
cls
$song_lyrics=("Quisiera:Ayer:cambiarle:conocí:el:un:final" +
               ":cielo:al:sin:cuento|Las:sol|Y:barras:un:y" +
               ":hombre:los:sin:tragos:suelo|Un:han:santo:" +
               "sido:en:testigo|De:prision|Y:el:una:dolor:" + 
               "canción:que:triste:me:sin:causaste:dueño|Y:" +
               "y:conocí:to':tus:lo:ojos:que:negros|Y:hiciste" +
               ":ahora:conmigo|Un:sí:infeliz:que:en:no:el:" +
               "puedo:amor,:vivir:que:sin:aun:ellos:no:yo|" +
               "Le:te:pido:supera|Que:al:ahora:cielo:camina" +
               ":solo:solo:un:sin:deseo|Que:nadie:en:por:tus" +
               ":todas:ojos:las:yo:aceras|Preguntándole:pueda" + 
               ":a:vivir|He:Dios:recorrido:si:el:en:mundo:verdad" +
               ":entero|te:el:vengo:amor:a:existe|:decir|")


# split ^^ into single word list, then add the words to their own
# respective lists.
$unsorted_lyrics = @()
$unsorted_lyrics += $song_lyrics.Split(':')

# loop unsorted into its two songs.
$song_one = @()
$song_two = @()

for ($i = 0; $i -lt $unsorted_lyrics.Length; $i+=2) {
    # i = zero and even is first song.
    # the rest are second.
    $song_one += $unsorted_lyrics[$i]
    $song_two += $unsorted_lyrics[$i+1]
}
write-host $song_one
Write-Host
write-host $song_two

# songs have been split. Now handle formatting.