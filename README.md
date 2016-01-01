What it does
-------------

The goal of this program is to change PDF documents into a format usable by [Anki](http://ankisrs.net/) flashcards. I coded it to help make the [Dental Decks flashcards](http://www.dentaldecks.com/Pages/Default.aspx) more useful. The question card in Anki will be a JPG of a PDF page, with 1-n pages as the answer.

After running the program, you should have a folder containing images of each page of each PDF, and a CSV for each PDF that references those images, with one line per flashcard. Then, follow the instructions in "how_to_import_to_anki.txt" to import those files into Anki.

For this program to be effective, there needs to be some sort of machine-readable difference between question and answer pages. In the case of Dental Decks "copyright" is present only on question pages.

This is a lightly generalized program built for one use; hopefully it can help you with your own use case using Ruby to convert PDF to Anki, but I am not planning on maintaining or expanding it.

Issues it might help you with
-------------

#####Manually creating an Anki deck 

I didn't find many guidelines on formatting Anki imports with attachments. Between the program and the text file, you should be able to save a lot of work in creating your own decks.

##### Syntax for changing PDF quality in RMagick 

I had to play around for a while to figure out the syntax for changing PDF quality.