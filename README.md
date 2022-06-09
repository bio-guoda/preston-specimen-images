# preston-specimen-images
Keeps a longitudinal record of specimen image URLs as registered via networks like GBIF, OBIS, and iDigBio

:warning: Experimental Biodiversity Data processor

to extract all StillImages from tracked data, first clone https://deeplinker.bio . using

$ preston clone https://deeplinker.bio

then, run,

$ ./find-image-records | gzip > image.json.gz


with first 10 records being:

$ cat image.json.gz | gunzip | head 
{"from":"line:zip:hash://sha256/bfbfa40215e849fcb84710611cabc815a64a04732de1b4b85f29ba4fdb17012a!/multimedia.txt!/L2","id":"03C087F8FFBD8A381CE2FEADBE534F8F.taxon"}
{"from":"line:zip:hash://sha256/bfbfa40215e849fcb84710611cabc815a64a04732de1b4b85f29ba4fdb17012a!/multimedia.txt!/L3","id":"03C087F8FFBD8A381CE2FEADBE534F8F.taxon"}
{"from":"line:zip:hash://sha256/bfd8b61879f2ef77a209fb390849e9ec43036b1bd8dac08206c5507fd5d452d7!/multimedia.txt!/L2","id":"03CC87BCFF9542283D8A119099FA6EAC.taxon"}
{"from":"line:zip:hash://sha256/bfd8b61879f2ef77a209fb390849e9ec43036b1bd8dac08206c5507fd5d452d7!/multimedia.txt!/L3","id":"03CC87BCFF9542283D8A119099FA6EAC.taxon"}
{"from":"line:zip:hash://sha256/bfd8b61879f2ef77a209fb390849e9ec43036b1bd8dac08206c5507fd5d452d7!/multimedia.txt!/L4","id":"03CC87BCFF9542283D8A119099FA6EAC.taxon"}
{"from":"line:zip:hash://sha256/bfd8b61879f2ef77a209fb390849e9ec43036b1bd8dac08206c5507fd5d452d7!/multimedia.txt!/L5","id":"03CC87BCFF9542283D8A119099FA6EAC.taxon"}
{"from":"line:zip:hash://sha256/bfd8b61879f2ef77a209fb390849e9ec43036b1bd8dac08206c5507fd5d452d7!/multimedia.txt!/L6","id":"03CC87BCFF9542283D8A119099FA6EAC.taxon"}
{"from":"line:zip:hash://sha256/bfd8b61879f2ef77a209fb390849e9ec43036b1bd8dac08206c5507fd5d452d7!/multimedia.txt!/L7","id":"03CC87BCFF9542283D8A119099FA6EAC.taxon"}
{"from":"line:zip:hash://sha256/bfd8b61879f2ef77a209fb390849e9ec43036b1bd8dac08206c5507fd5d452d7!/multimedia.txt!/L8","id":"03CC87BCFF94422B3D8A128B9D546EB2.taxon"}
{"from":"line:zip:hash://sha256/bfd8b61879f2ef77a209fb390849e9ec43036b1bd8dac08206c5507fd5d452d7!/multimedia.txt!/L9","id":"03CC87BCFF94422B3D8A128B9D546EB2.taxon"}


Here, ```from``` is shorthand for derivedFrom with value a coordinate in the teddy-verse. ```id``` is the darwin core id of the found record containing "StillImage" .


