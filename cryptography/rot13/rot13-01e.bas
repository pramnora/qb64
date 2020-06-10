CLS: PRINT "ROT13 Encoder/Decoder"
INPUT "Enter text to either encode/decode(A-Z/a-z)"; s$: s$ = UCASE$(s$)
FOR i% = 1 TO LEN(s$): e$ = MID$(s$, i%, 1)
    IF e$ <= "M" THEN n% = 13 ELSE n% = -13
    IF e$ >= "A" AND s$ <= "Z" THEN c$ = c$ + CHR$(ASC(e$) + n%)
NEXT: PRINT c$

'*** This is the final minified version of the code;
'    as you can see it's now only 5 lines long!
'    Whereas before the program took up a whole entire page/
'    the original version was 17 lines long.

'    The code compression techniques used were as follows:
'    --> delete all comment statements/lines which begin with a single apostrophe: (')  
'    --> change all descriptive long variable names into becoming a single letter, instead
'    --> if at all possible, use the colon(:) symbol...to place 2 BASIC code line statements...onto 'one' single line

'    NOTE: Generally speaking, whenever one compresses code down; it takes up about 1/3rd of it's usual space;
'          and, this might mean the code runs a lot faster. This is especially so when the code is very lengthy:
'          for example, a 200 line program could be compressed down to become: 60 to 70 lines.
'          When the program is short, however, then the benefits of code compression may prove to be rather less.

'          From our human point of view, we tend to prefer code that is longer/and, therefore, is pretty much self-explanatory;
'          from the computer's point of view...; it doesn't care less about 'beautified' code;
'          it doesn't care if your code is either long or short...as computer's -unlike humans- aren't emotional; 
'          however, shorter code can be processed much faster by the computer simply because there's less data to process.
