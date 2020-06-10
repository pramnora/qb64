**CRYPTOGRAPHY links**

**ROT13/(ROTate 13)**
* https://en.wikipedia.org/wiki/ROT13  
* http://www.rot13.com  

-----

**ROT13 chart**

ROT 13/or, ROTate 13...is a very simple alphabet code.

ALGORITHM: Basically, you...

- Divide up the 26  English letter alphabet...into 2/so, 26 divided by 2 = 13.  
- Next, write out each letter of the alphabet into being 2 separate rows;  
  with one row going on top of the next...each row consisting of only 13 characters each.  
- Start with letter: A...and, then, work your way upwards...1 letter at a time;   
  going straight though the entire English alphabet...until you reach end letter: Z.  
- Direction wise, the alphabet is written going straight across going from: 'left to right'.    

> A B C D E F G H I J K L M  
> N O P Q R S T U V W X Y Z

-(The letter, below...corresponds to the letter being written directly on top of it;     
  the letter, on top...corresponds to the letter which is written directly down below;    
  so, A, is translated to become, N;    
  and, N, is translated to become, A.)-      

...and, now, you are all set to do your 'encoding/decoding' process...as the following example shows:

**Encode:** ABC = NOP  
**Decode:** NOP = ABC  

> By the way, this is known as being called: a *symmetrical cipher*;      
> meaning, if you reverse the order of **encoding**: A = N;       
> then, that is how you **decode**: N = A.  

Of course, it helps if you were to write a computer program to help solve this task...;         
which is because the computer works so much *faster* at doing both the 'encoding/decoding' process;    
than would any human being who has to process it, either:

 - manually, inside of their own mind    
 - or else, by writing it down by hand onto paper  
 
...and, so, it is for these reasons why the computer is really best suited to dealing with and solving *cryptograpy* problems;    
because it works at 'electronic' speeds; and, also, is **guaranteed** to make absolutely nil mistakes!  

**Encode:** Thisisasecretmessage = GUVFVFNFRPERGZRFFNTR  
**Decode:** GUVFVFNFRPERGZRFFNTR = THISISASECRETMESSAGE   

Had I tried to solve the above problem myself; then, it would have taken me quite a while...;    
working out what every single letter meant in a 20 letters long message: G=T/U=H/V=...?;       
however, the computer went and solved the very same task in less than a mere *second*!

-----

**MATHS**  

At the heart of nearly every single *cryptography* problem...lies, **maths**.  

So, looking at this problem mathematically speaking...  

- If the letters alphabet position number is greater than/or, equals 1; but, is less than/or, equals 13: (A-M); then, add +13    
- If the letters alphabet position number is greater/or, equals 13; but, less than/or, equal to 26: (N-Z); then, subtract -13    

PSEUDOCODE(non specific programming language): In computer code, the above formula translates to become...    

- IF letterAlphabetPosition >= 1 AND <=13 THEN letterAlphabetPosition = letterAlphabetPosition +13    
- IF letterAlphabetPosition >= 14 AND <=26 THEN letterAlphabetPosition = letterAlphabetPosition -13    

...and, that's it, our *cryptography* problem is solved using very simple and straight forwards mathematics;    
and, in only just 2 steps!  

-----

**ALGORITHMS**

It is certainly worthwhile noting that, quite often, in the computing world;    
what truly matters most...is NOT the programming language itself;  
this is because many different programming languages can be used to solve exactly the same task;  
so, it really doesn't matter if we were to write the code using:  
C/C++/Java/Javascript/Python/BASIC/LOGO/SCRATCH/-etc.;    
instead, what really matters is our careful *understanding* of the underlying 'step by step' **ALGORITHM**;    
an **ALGORITHM** meaning...

> breaking down/and, then, solving problems, very carefully, step by step.  

Frankly, what might seem like being a next to impossible task to *begin* with...?  
Through having latched on to the **correct** algorithm....;  
then, all of a sudden, everything becomes really quite 'crystal clear';      
and, then, all of a sudden, we find we are having a Eureka moment! ;-)  

Though, eventually, we do tend to get really bored of having gone and solved one particular task;      
so, we go and find an entirely different task to solve, instead;  
much like *mountain climbers*...who having gone and successfully climbed up one mountain/    
and, have successfully descended down from off it, as well;  
really can't wait to go find a *next* mountain to go and climb.  
