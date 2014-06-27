### Currently under development

## Word Centipede

Word Centipede analyzes two consecutive words and calculates the overlap. The
"overlap" is defined as such: begins with the second word, and is matched
backwards in the first word to find shared 'chunks'. The chunk *must* be originated
from the second word, starting with it's first character, and the match *must*
terminate at the first word's last character.

#### Example

`adjacent` and `centipede` where `cent` is the calculated overlap. The
resulting combination would be `adjacentipede`. This could continue infinitely.

#### Scoring

TK
