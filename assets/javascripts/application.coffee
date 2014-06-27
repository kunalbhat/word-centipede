words = []
totalScore = 0

$form   = $('#word')
$input  = $('#word input[type = text]')
$output = $('#output')
$score  = $('#score')

printWords = ()->
  $output.html('')

  for word in words
    $output.append('<li>' + word + '</li>')

updateScore = (score)->

  console.log score, totalScore + score

  $score.text(totalScore)

generateFirstWord = ()->
  words.push 'archipelagopher'

  printWords()

generateFirstWord()
updateScore()

$form.on 'submit', (event)->
  event.preventDefault()

  new_word = $input.val()

  compareWords(new_word)

  $input.val('')

compareWords = (new_word)->
  currentIndex = words.length

  old_word = words[currentIndex - 1]
  word     = new_word

  for i in [new_word.length..0] by -1
    chunk = new_word.substr(0, i)

    if old_word.indexOf(chunk) > -1
      if old_word.substr(old_word.length - chunk.length, old_word.length) == chunk
        words.push word

        updateScore(chunk.length)
        printWords()

        break
      else
        console.log 'no match'


