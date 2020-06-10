'------------------------------------------------------------------------------------------------------------------------

'...INTRODUCTION:

'   Comment lines start with a single apostrophe: (')/
'   these are also referred to as being called: 'source code' comments;
'   they help explain what the program does using: 'plain, and, straight forwards english'...;
'   these comments can be read and understood even by people who are 'non-programmers' themselves.

'   On the other hand, it is really quite 'safe' to delete ALL 'source code' comments...;
'   because they are NOT actually code to be *run/executed*;
'   but, instead, the comments will be totally and completely 'ignored' by the QBASIC/QB64 interpreter/or else, compiler.

'------------------------------------------------------------------------------------------------------------------------

'   One way that programmers might choose to include comments documenting their underlying 'source code' is as follows...

'*** PROGRAM: Name (eg. Maths/12 x Tables/or, Graphics: Draw A Circle;
'             as soon as somebody sees/reads the title; then, they have a clear idea about what this program does)
'    VERSION: Number (Does the program have a particular version number.
'             eg. Version 1/Version II/
'             or, Version 1/Version 2/
'             or, Version 1.0.0/Version 1.0.1/Version 1.1.2/-etc.)
'   LANGUAGE: (Which programming language was used to create the program with/
'              too, which version of the programming language did you use.
'              eg. QBASIC/QB64.
'              you might even include a link to where the programming language software can be downloaded;
'              especially, if that software is FREE...; then, other people finding your program 'source code'
'              will be able to download the software; and, also, be able to *run/execute* the program.)
'   COMPUTER: (Was it a home based computer/school/or, work based/
'              too, what was the compuer OS/Operating System....created on either a PC/Mac/Linux/-etc.
'              eg. Home based PC/OS: Windows 10 Professional)
'     EDITOR: (Did you use a particular editor software/or, maybe, even, multiple editors.
'              eg. Windows Notepad/or, QB64 IDE/Integrated Development Environment)                
'    CREATED: (Date the program was first created.
'              Eg. 2020/or, May 2020/or, 10th May 2020/or, Sat 10th May 2020/-etc.
'              you might even choose to include the date/time/timezone: Sat 10TH May 2020 18:04 PM GMT)
'    UPDATED: (Date the program was last updated; this shows if you did 'update' the program/or, not; and, if so, when.
'              the details follows the same format as CREATED)
'    AUTHOR:  (Who created the program: Your name; or, maybe, your company name/-etc.)
'   LOCATION: (Where in the world the author is located...
'              NOTE: You don't need to include your exact address/
'              but, instead, just  give general details of where you live: Country, City: 
'              eg. UK, London;
'              in this way, the readers of the source code will know if you are living far away/or, near.)-
'    EMAIL: (What is the persons email...so that people can get in touch with you if necessary...
'            possibly to make requests to 'change/update' the program;
'            or, possibly, build a different program; 
'            they might choose to send in comments stating they like the program/or, not; 
'            and, how they themselves have chosen to use it/-etc.
'            You might choose to create/use a specific email address to receive users responses;
'            so that it's not confused with other mail you get.
'            Or, leave a note stating...responses should state in the email subject header: PROGRAMMING: Program name/
'            you might even state...other than for purpose of commercial sale/emails will NOT be responded to)
'  COPYRIGHT: (Sometimes, program authors choose to give away their software entirely for FREE;
'              at other times, they choose to 'limit' who can use it/and, also, for what particular purpose;
'             eg. this software is FREE for individuals to use/edit/change/study/learn from; 
'             but, may not be 'published' or used for commercial gain without having, first,
'             obtained proper permission from the author themselves.)

'             Finally, here is an actual example of the above...

'------------------------------------------------------------
'*** PROGRAM: Code Comments
'    VERSION: 2
'   LANGUAGE: QBASIC/VERSION: QB64
'------------------------------------------------------------
'   COMPUTER: Home based PC
'         OS: Windows 10 Professional
'     EDITOR: GitHub, source code repository (online)
'             http://www.github.com
'------------------------------------------------------------
'     AUTHOR: Mr. Paul Ramnora
'      EMAIL: pramnora@yahoo.com
'   LOCATION: London, UK
'  COPYRIGHT: (c)2020-, Mr. Paul Ramnora./All rights reserved.
'------------------------------------------------------------
'    CREATED: 10/06/20 19:08 PM GMT
'    UDPATED: 10/06/20 19:08 PM GMT
'------------------------------------------------------------

'------------------------------------------------------------------------------------------------------------------------

'    NOTE(1): Exactly what 'source code' comments the programmer chooses to include is purely up to them;
'             therefore, 'source  code' comments are ALL entirely 'optional'/as opposed to being strictly 'mandatory';
'             so, the programmer could choose to leave in some comments/or, none; 
'             as well as, at any time, the programmer could choose to go back into the commentary code
'             to either 'change/update/delete it...either in part/or else, in total.

'    NOTE(2)  If a program's commentary text says...
'             PROGRAM CREATED: 2010
'             the programmer could, at some later date, go back in and change this to say:
'             PROGRAM CREATED: 2008
'             ...in other words; comments are NOT necessarily 'bible truth'; they can actually 'lie', sometimes...?!

'    NOTE(3): People are, in fact, free to either pay attention to/or else, totally ignore your comments if they wish;
'             therefore, the only way to keep your program 'source code' completely safe...is do NOT publish it!

'    NOTE(4): If you try running this program...; then, you will find the output is nothing more than a 'blank' screen;
'             this is because the underlying 'source code' comments are only there to be 'read'/
'             and, NOT to be viewed as being program 'output'.

'    NOTE(5): If you were to try and delete ALL of the comment lines contained herein;
'             then, you would be left with a totally 'empty' document;
'             as the code is made up entirely of 'source code' comments, alone.

'    NOTE(6): As well as the inclusion of separator dashes: (-)/
'             it's also possible to include 'blank' vertical lines inside of code comment blocks;
'             all of which serves to lay out the underlying 'source code' to read a lot more clearly;
'             this is referred to as being called: 'programming style'.

'    NOTE(7): Code comments do not only help to serve...

'             - a> people who are complete and total strangers to the program
'                  that are interested in seeing and reading what the underlying 'source code' says

'             - b> it also helps the programmer themselves to know...

'               - what the program is all about
'               - who wrote it...was it co-produced by others/or, created all alone
'               - where...were they at home/in college/or, inside of somebody else's house
'               - when they created it...was it created today/this morning/evening/late at night/
'                 or, yesterday/last week/last month/last year/or, maybe, even, years/decades ago.
'               - what programming language did they use/and, what was the particular version...
'               - what editor/or, editor(s)
'               ...and, so on.

'               Please, believe me, in 10+ years time...you might have written, quite literally, 100's/if not 1000's of programs;
'               and, many of these details you will, most likely, tend to forget...?!
'               So, when you come across code that is very 'well documented'; then, you will most deeply appreciate it
'               that someone took the time and effort to include code comments/as opposed to having left none!

'               -----------

'               To give a 'real life' case...; and, I've been writing programs -albeit, very simple programs-;
'               for what seems like endless years, now. (Started programming around: 23/and, am now aged: 57.)

'               Freqently, I come across very simple programs I've written...
'               things which say 1 line of code such as:
'               PRINT "Hello, world!"
'               ...but, because the program is so very simple/
'               or else, might have been written as being just merely a 'test' program...;
'               therefore, I did not bother with commenting the code, properly, at all;
'               then, I often find myself wondering...
'               'when/where/on which' computing machine did I write that, I wonder;
'               ...and, the answer is, frankly, I just don't know?!

'               The line...
'               PRINT "Hello, world!"
'               ...could have been written on...
'               - an IBM work computer using BASICA
'               - a Tandy Radio Shack Colour Computer II at home using Microsoft BASIC 
'               - a RM Nimbus PC in college/RM Nimbus BASIC
'               - a ZX81 machine in college/BASIC
'               - an Atari 520ST FM machine at home/FastBASIC
'               - a home based PC/using QBASIC/and, maybe, Windows 3.x/95/98/XP/7/8/10/-etc.?
'               - it could also have been written at some online web site such as, repl.it/BASIC

'               ...because, in my time, I do remember working on all of those;
'               but, without having any code comments being included to explain as much...;
'               then, I can only just merely guess.
'-------------------------------------------------------------------------------------------------------------------------------
