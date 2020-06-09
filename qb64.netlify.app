<!DOCTYPE html>

<html lang="en">

 <head>

  <!--meta tags/start...-->

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta name="description" content="Paul Ramnora, Programming language: QBASIC/QB64; history, tutorial, download, -etc.">
  <meta name="keywords" content="paul ramnora, ramnora, pramnora, pramgoat, programming,language,qbasic,qb64,tutorial">

  <meta name="author" content="Mr. Paul Ramnora">
  <meta name="email" content="pramnora@yahoo.com">
  <meta name="copyright" content="(c)2020-, Mr. Paul Ramnora./All rights reserved.">

  <meta name="computer" content="Home based PC">
  <meta name="os" content="Windows 10 Professional">
  <meta name="editor" content="Windows Notepad">

  <meta name="page-created" content="09:20 01/06/2020">
  <meta name="last-updated" content="00:58 08/06/202020">

  <!--...meta tags/end.-->


  <title>Web page template</title>
  <link rel="stylesheet" type="text/css" href="css01.css">
  <script type="text/javascript" src="js01.js"></script>


  <!--stylesheet/start...-->

  <style>
a:link{color:blue;text-decoration:none;}
a:hover{color:red;text-decoration:underline;}
a:visited{color:purple;}
a:active{color:red;}
html{padding-left:15%;padding-right:15%;background-color:silver;}
body{background-color:white;color:black;padding-left:25px;padding-right:25px;font-family:arial,verdana,sans-serif;}
header{margin-top:50px;background:black;color:white;padding:100px;}
h1{text-align:center;background-color:black;color:white;} 
h3{text-align:left;background:yellow;color:green;}
.clsPaddedHeading{text-align:center;background-color:grey;color:silver;padding:25px;} 
main{font-size:large;margin-bottom:50px;}
.clsParaIndent{text-indent:1cm;}
footer{text-align:center;}
.clsTimeDateStamp{font-style:italic;color:red;}
#idCopyrightMessage{background-color:black;color:white;padding:25px;}
  </style>

  <!--...stylesheet/end.-->


 </head>

 <body>

  <header>
   <h1>QBASIC/QB64</h1>
  </header>




  <!--TOC Menu/start...-->


  <a name="top"></a>

  <p><i><b>T</b>able <b>O</b>f <b>C</b>ontents:-</i></p>

  <hr>

  <ul>
   <li><a href="#foreword">Author's Foreword</a>
    <ul>
     <li><a href="#foreword:intro">Quick Intro.</a></li>
     <li><a href="#foreword:choronology">Choronology: My personal history of having used BASIC...</a></li>
    </ul>
   </li>
  </ul>

  <hr>

  <ul>
   <li><a href="#introduction">Introduction</a>
    <ul>
     <li><a href="#introduction:term-basic">The meaning of the term: BASIC</a></li>
     <li><a href="#introduction:basic-versions">The many different BASIC Versions</a></li>
     <li><a href="#introduction:interpreterVScompiler">Interpreter VS Compiler</a></li>
     <li><a href="#introduction:qbasic">QBASIC</a></li>
     <li><a href="#introduction:oldVSnew">Old VS Modern</a></li>
     <li><a href="#introduction:qb64">QB64</a></li>
     <li><a href="#introduction:overview">General overview: What learning BASIC will teach you...</a></li>
     <li><a href="#introduction:overview2">General overview: What learning BASIC won't teach you...</a></li>
    </ul>
   </li>
  </ul>

  <hr>

  <p><em>History...</em></p>
  
  <ul>
   <li><a href="#history">History</a>
    <ul>
     <li><a href="#history:wikipedia">Wikipedia articles</a></li>
      <ul>
       <li><a href="#history:versions">BASIC Programming language versions</a></li>
       <li><a href="#history:hardware">Hardware</a></li>
       <li><a href="#history:people">People</a></li>
      </ul>
     </li>
     <li><a href="#history:youtubevideos">YouTube Videos</a></li>
    </ul>
   </li>
 
  </ul>

  <hr>

  <p><em>Setting up...</em></p>
  
  <ul>
   <li><a href="#setup:download">Download</a></li>
   <li><a href="#setup:system-set-up">System set up</a>(x)</li>
   <li><a href="#setup:editor">Editor</a>(x)</li>
  </ul>

  <hr>

  <p><em>Language/Tutorials...</em></p>

  <ul>
   <li><a href="#language:tutorials">Language/Tutorials</a>
   </li> 
  </ul>

  <hr>

  <p><em>Language/Reference...</em></p>
  
  <ul>
   <li><a href="#language:reference">Language/Reference</a>
    <ul>
     <li><a href="#language:reference:books">Books</a></li>
     <li><a href="#language:reference:wikibooks">Wikibooks</a></li>
     <li><a href="#language:reference:websites">Web pages/sites</a></li>
      <ul>
       <li><a href="#language:reference:websites:wordpress">Wordpress</a></li>
      </ul>
     </li>
    </ul>
   </li>
 
  </ul>

  <hr>

  <p><em>BASIC Language</em></p>

  <p><em>General commands</em></p>

  <ul>
   <li><a href="#comments">Comments</a>(x)</li>
   <li><a href="#cls">CLS</a>(x)</li>
   <li><a href="#print">PRINT</a>(x)</li>
   <li><a href="#end">END</a>(x)</li>
  </ul>

  <p><em>Data types...</em></p>
  
  <ul>
   <li>Strings
    <ul>
     <li><a href="#data-types:string-literals">String literals</a>(x)</li>
     <li><a href="#data-types:string-variables">String variables</a>(x)</li>
     <ul>
      <li>String Functions
      <ul>
       <li><a href="#data-types:numeric-functions:">CHR$(n)</a>(x)</li>
       <li><a href="#data-types:string-functions:left">LEFT$(s$,n)</a>(x)</li>
       <li><a href="#data-types:numeric-functions:len">LEN$(s$)</a>(x)</li>
       <li><a href="#data-types:numeric-functions:lcase">LCASE$(s$)</a>(x)</li>
       <li><a href="#data-types:string-functions:inkey">INKEY$</a>(x)</li>
       <li><a href="#data-types:string-functions:locate">LOCATE Xn,Yn</a>(x)</li>
       <li><a href="#data-types:string-functions:mid">MID$(s$,n1,n2)</a>(x)</li>
       <li><a href="#data-types:string-functions:right">RIGHT$(s$,n)</a>(x)</li>
       <li><a href="#data-types:string-functions:spc">SPC(n)</a>(x)</li>
       <li><a href="#data-types:numeric-functions:space">SPACE$(n)</a>(x)</li>
       <li><a href="#data-types:string-functions:str">STR$(n)</a>(x)</li>
       <li><a href="#data-types:string-functions:string">STRING$(n,s$)</a>(x)</li>
       <li><a href="#data-types:numeric-functions:ucase">UCASE$(s$)</a>(x)</li>

      </ul>
     </ul>
    </ul>
   </li>
   <li>Numbers
    <ul>
     <li><a href="#data-types:numeric-literals">Numeric literals</a>(x)</li>
     <li><a href="#data-types:numeric-variables">Numeric variables</a>(x)</li>
     <ul>
      <li><a href="#">Numeric Functions</a>
      <ul>
       <li><a href="#data-types:numeric-functions:">ABS(n)</a>(x)</li>
       <li><a href="#data-types:numeric-functions:">ASC(n)</a>(x)</li>
       <li><a href="#data-types:numeric-functions:">ATN(n)</a>(x)</li>
       <li><a href="#data-types:numeric-functions:sqr">COS(n)</a>(x)</li>
       <li><a href="#data-types:numeric-functions:hex">HEX$(n)</a>(x)</li>
       <li><a href="#data-types:numeric-functions:sqr">SIN(n)</a>(x)</li>
       <li><a href="#data-types:numeric-functions:sqr">SQR(n)</a>(x)</li>
       <li><a href="#data-types:numeric-functions:">TAN(n)</a>(x)</li>
       <li><a href="#data-types:numeric-functions:">VAL(n)</a>(x)</li>
      </ul>
     </ul>
    </ul>
   </li>
  </ul>

  <p><em>Operators...</em></p>
  
  <ul>
   <li><a href="#math-ops">Math operators</a>(x)</li>
   <li><a href="#comparison-ops">Comparison operators</a>(x)</li>
   <li><a href="#logical-ops">Logical operators</a>(x)</li>
  </ul>

  <p><em>Music...</em></p>
  
  <ul>
   <li><a href="#music:play">Play</a>(x)</li>
  </ul>

  <p><em>Graphics...</em></p>
  
  <ul>
   <li><a href="#graphics:dot">SCREEN n</a>(x)</li>
   <li><a href="#graphics:dot">Dot</a>(x)</li>
   <li><a href="#graphics:line">Line</a>(x)</li>
   <li><a href="#graphics:box">Box</a>(x)</li>
   <li><a href="#graphics:circle">Circle</a>(x)</li>
  </ul>



  <p><em>Loops...</em></p>
  
  <ul>
   <li><a href="#loops:for">For/Next</a>(x)</li>
   <li><a href="#loops:do-loop">Do/Loop</a>(x)</li>
   <li><a href="#loops:do-while">Do/While</a>(x)</li>
   <li><a href="#loops:while-wend">While/Wend</a>(x)</li>
   <li><a href="#loops:recursion">Sub-routine recursion</a>(x)</li>
  </ul>

  <p><em>Functions...</em></p>
  
  <ul>
   <li><a href="#functions:gosub">GOSUB LabelName/Return</a>(x)</li>
   <li><a href="#functions:sub">SUB/END SUB</a>(x)</li>
   <li><a href="#functions:function">FUNCTION/END FUNCTION</a>(x)</li>
  </ul>

  <p><em>Filing...</em></p>
  
  <ul>
   <li><a href="#filing:write">File write</a>(x)</li>
   <li><a href="#filing:read">File read</a>(x)</li>
   <li><a href="#filing:type">Type/End Type</a>(x)</li>
   <li><a href="#filing:kill">KILL</a>(x)</li>
  </ul>

  <p><em>Selection...</em></p>
  
  <ul>
   <li><a href="#selection:if">If-Then-Else-End If</a>(x)</li>
   <li><a href="#selection:switch">Switch/End Switch</a>(x)</li>
  </ul>


  <p><em>System...</em></p>
  
  <ul>
   <li><a href="#system:cls">CLS</a>(x)</li>
   <li><a href="#system:shell">SHELL</a>(x)</li>
   <li><a href="#system:dir">DIR</a>(x)</li>
   <li><a href="#system:mkdir">MKDIR</a>(x)</li>
   <li><a href="#system:rmdir">RMDIR</a>(x)</li>
  </ul>


  <!-- beginner/first example programs/start...-->

  <hr>

  <p><em>Beginner: First example programs...(in just merely one or two lines of code)</em></p>
  
  <ul>
   <li><a href="#first-programs">First programs</a></li>
   <ul>
    <li><a href="#first-programs:text:hw01">Hello, world!</a> - (how to print text)</li>
    <li><a href="#first-programs:maths:add01-ver1">Simple add/version I</a> - (how to print numbers) </li>
    <li><a href="#first-programs:maths:add01-ver2">Simple add/version II</a> - (how to print both text/numbers together, at once) </li>
    <li><a href="#first-programs:maths:random-dice">Throw a random dice</a> (randomly chosen numbers: 1 to 6)</li>
    <li><a href="#first-programs:text:input">Simple input</a> - (capture keyboard input/and, echo it) </li>
    <li><a href="#first-programs:music">Simple music</a> - (Play musical notes: 'ABCDEFG') </li>
    <li><a href="#first-programs:graphics:circle">Circle</a> - (how to draw a circle on screen)</li>
   </ul>
  </ul>


  <!--...beginner/first example programs/end.-->



  <hr>

  <p><em><a href="#beginner2intermediate-programs">Beginner to Intermediate</a>: Example programs...</em></p>
  
  <ul>
   <li><a href="#">Graphics</a>(x)
    <ul>
     <li><a href="#beginner2intermediate-programs:graphics:random-graphics">Draw random graphics</a>(x)</li>
     </ul>
   </li>
   <li><a href="#">Database</a>(x)
    <ul>
      <li><a href="#beginner2intermediate-programs:database:look-up">Look up tables</a>(x)</li>
      <li><a href="#beginner2intermediate-programs:database:phonebook">Phonebook</a>(x)</li>
     </ul>
   </li>
   <li><a href="#">English</a>(x)
   <ul>
    <li><a href="#beginner2intermediate-programs:english:patterns:tab-steps">Text pattern (tab-steps)</a></li>
    <li><a href="#beginner2intermediate-programs:english:">-</a>(x)</li>
    </ul>
   </li>
   <li><a href="#">Games</a>(x)
    <ul>
     <li><a href="#beginner2intermediate-programs:games:throw-dice">Throw dice (text graphics)</a>(x)</li>
     <li><a href="#beginner2intermediate-programs:games:guess-the-number">Guess the number (higher/lower)</a>(x)</li>
     </ul>
   </li>
   <li><a href="#beginner2intermediate-programs:maths">Maths</a>
    <ul>
     <li><a href="#beginner2intermediate-programs:maths:12xtables">12 x Tables</a></li>
     <li><a href="#beginner2intermediate-programs:maths:calculator">Calculator (text-based)</a></li>
     <li><a href="#beginner2intermediate-programs:maths:factorial">Calculate Factorial (loop recursion)</a>(x)</li>
     <li><a href="#beginner2intermediate-programs:cryptography">Cryptography</a>
    <ul>
     <li><a href="#beginner2intermediate-programs:cryptography:ascii">ASCII (cryptography)</a>(x)</li>
     <li><a href="#beginner2intermediate-programs:cryptography:rev-text">Reverse text</a></li>
     <li><a href="#beginner2intermediate-programs:cryptography:games:guess-word-number">Game: Guess word number</a></li>
    </ul>
   </li>
   </li>

    </ul>

   <li><a href="#">Other</a>(x)
    <ul>
     <li>
      <a href="#beginner2intermediate-programs:menu">Menu (a menu driven program)</a>(x)</li>
     </li>
    </ul>
   </li>
  </ul>

  <hr>

  <!--...TOC Menu/end-->

  <!------------------------------------------------------------------------------------------------------------------------------------------------------->

  <main>


   <!--Foreword/start...-->

   <a name="foreword"></a>

   <blockquote>

   <h2 class="clsPaddedHeading">Author's Foreword</h2>

   <a name="foreword:intro"></a>

   <h3>Quick Intro.</h3>

   <blockquote>

    <p>
     Hi, my name is, Paul Ramnora. I live in London, UK. I'm currently aged, 57 years old. 
    </p>     

    <p>
     I decided to write this rather <b>long</b> web page...in order to <i>share</i> with others my own enjoyment in learning how to do BASIC programming.
    </p>

    <p>
     I have programmed using BASIC for years and years.../even, over decades long...!
    </p>

    <p>
     However, I'm am <b>not</b> a <i>master</i> of the language; instead, I just tend to use it for very simple and straight forwards purposes, alone.
    </p>

    <p>
     It is a <b>general purpose</b> programming language, that is non-technical; thus, it allows me to very quickly be able to create...
    </p>

    <ul>
     <li>a phone book</li>
     <li>a look up chart</li>
     <li>solve mathematical equation puzzles, calculate: factorial/primes</li>
     <li>practice doing beginner's level Cryptograpy</li>
     <li>-etc.</li>
    </ul>

    <p>
     BASIC, was my very <i>first</i> programming language; and, as such, it is something that I can never ever forget...?!
    </p>

   </blockquote>

   <a name="foreword:choronology"></a>

    <h3>Choronology: My personal history of having used BASIC...</h3>

    <blockquote>

    <p>
     Mixture of BASIC related <i>hardware/software</i> I've used...
    </p>

    <ul>
     <li>Hardware:
      <ul>
       <li>Tandy Radio Shack Color Computer II/Microsoft BASIC - (home computer)</li>
       <li>PSION XPII(2 line screen)/OPL-Organiser Programming Language...very BASIC-like in flavour - (hand held portable computer)</li>
       <li>PSION Series 3a(multi-line screen)/OPL-Organiser Programming Language...very BASIC-like in flavour - (hand held portable computer)</li>
       <li>RM Nimbus BASIC/too, ZX81 BASIC. - (College computer/s)</li>
       <li>IBM PC/BASICA - (work place computer)</li>
       <li>Commadore 64/Commadore 64 BASIC - (home computer)</li>
       <li>Atari 520 STFM/Fast BASIC - (home computer)</li>
       <li>Raspberry Pi/Rasbian Linux/Downloaded and ran BASIC(forgot the name?!) - (home computer)</li> 
     </ul>
     <li>Software:
      <ul>
       <li>Microsoft QBASIC on CD ROM - (home computer/PC)</li> 
       <li>VBScript (written inside of HTML web pages/alongside CSS/Javascript) - (home computer/PC)</li>
       <li>Visual BASIC 6 - (home computer/PC)</li>
       <li>Visual BASIC .Net - (home computer/PC)</li>
       <li>Visual BASIC for Applications - (home computer/PC,College)
       <li>Microsoft SmallBASIC - (home computer/PC)
      </ul>
     </li>      
    </ul>

    <p>All of this means, I have had a very long history which has been devoted to using the BASIC programming language before/and, on <i>many</i> different computing platforms.</p>

    <p>The thing I found to be most useful and 'fun' about having learned to use the BASIC programming language was...if you already know how to use 'one' version; then, you do pretty much know how to use them <i>all</i>. ;-)</p>

     <p>
      I've also found it to be a great <i>inspirer</i> to go and learn how to use <b>many</b> other programming languages...; just to be able to see how the two compare?
     </p>
  
   </blockquote>



   </blockquote>

   <!--foreword/end-->








   <!--Introduction/start...-->

   <a name="introduction"></a>

   <blockquote>

    <h2 class="clsPaddedHeading">Introduction</h2>

    <blockquote>

     <a name="introduction:term-basic"></a>

     <h3>
      The meaning of the term: BASIC 
     </h3>

     <p>
      The term: <b>BASIC</b> stands for: 
     </p>
  
     <ul>
      <li>(<b>B</b>)eginner's</li>
      <li>(<b>A</b>)ll-purpose</li>
      <li>(<b>S</b>)ymbollic</li>
      <li>(<b>I</b>)nstruction</li> 
      <li>(<b>C</b>)ode</li>
     </ul>

     <p>
      BASIC, is a programming language which was, originally, developed in the early 1960's by professors: Kemeny and Kurtz at Dartmouth College, USA. 
      <br><br>
      It was designed to be a simple <i>high level</i> non-technical language; which is particularly suitable for teaching total <b>beginner's</b> how to program. 
     </p>

     <a name="introduction:basic-versions"></a>

     <h3>BASIC versions</h3>

     <p>
      Many different variations of the BASIC programming language have been invented over time, including all of the following and loads more:-
     </p>

     <ul>
      <li>Microsoft:
       <ul>
        <li>BASIC - (1975)</li>
        <li>BASICA</li>
        <li>SmallBASIC</li>
        <li>QBASIC</li>
        <li>Visual BASIC - (1991)</li>
        <li>Visual BASIC.Net</li>
        <li>VBScript/Visual BASIC Script</li>
        <li>VBA/Visual BASIC for Applications</li>
       </ul>
      </li>
      <li>Other:
       <ul>
        <li>Commadore BASIC</li>
        <li>FastBASIC/(Atari)</li>
        <li>OPL/Organiser programming language (BASIC-like)</li>
        <li>Power BASIC</li>
        <li>QB64</li>
        <li>RM Nimbus BASIC</li>
        <li>Sinclair Spectrum BASIC</li>
        <li>Stos BASIC/(Atari)</li>
        <li>ZX81 BASIC</li>
        <li>-etc</li>
       </ul>
      </li>
     </ul>

     <p>
      In fact, this list could very easily go on and on...; as there are, quite literally, 100's of different BASIC's which were invented over time. 
      <br><br>
      Some use different programming IDE/Integrated Development Environments; have more or less commands; use different graphics/keyboard layouts(yes, at one time, BASIC, was actually included as being a part of the computing machine hardware as in Commodore 64 BASIC)/-etc. 
     </p>

     <a name="introduction:interpreterVScompiler"></a>

     <h3>
      BASIC Interpreter VS BASIC Compiler
     </h3>

     <p>
      BASIC program code can be either:
     </p>

     <ol>
      <li>interpreted - (slower/works by translating each line of code into becoming <i>machine code</i>, line by line)</li>
      <li>compiled - (faster/works by translating the whole entire program into becoming <i>machine code</i>)</li>
     </ol>


     <a name="introduction:qbasic"></a>

     <h3>QBASIC</h3>

     <p>
      The term, <b>QBASIC</b>, stands for: QuickBASIC.
     </p>

     <p>
      QBASIC, is meant to be a much faster <i>modern style</i> BASIC...; than, was the <i>old style</i> BASIC.
     </p>
   
     <p>
      For instance, QBASIC does away with the use of <i>old style</i>:
     </p>

     <ul>
      <li>Line numbers</li>
      <li>REM comments</li>
      <li>GOTO statements</li>
      <li>-etc.</li>
     </ul>

     <p>
      QBASIC, also, newly introduces...
     </p>

     <ul>
      <li>Local variables/(as opposed to global variables)</li>
      <li>Sub routines using either...</li>
       <ul>
        <li>Label names</li>
        <li>SUB/END SUB</li>
        <li>FUNCTION/END FUNCTION</li>
       </ul>
       <li>You can use a mixture of Capitals/Lower case</li>
       <li>You can employ the use of 'white space' to far more clearly lay out programs.</li>
      </ul>
      <li>-etc.</li>
     </ul>


     <a name="introduction:oldVSnew"></a>

     <h3>Old style BASIC VS Modern style BASIC</h3>

     <p>
      Here are a few examples of <i>old style</i> BASIC.../in direct comparison with <i>modern style</i> BASIC.
     </p>

     <!--table 1/start-->

     <table width="100%" cellpadding="3" cellspacing="3" border="0">

      <tr width="50%">
       <td>

       <table width="100%" cellpadding="3" cellspacing="3" border="0">
        <caption>Old style BASIC: (uses line numbers)</caption>
        <td>
         <form>
          <textarea rows="3" cols="80">
10 CLS
20 PRINT "Hello, world!"
30 END
          </textarea>
         </form>        
        </td>
       </table>

       </td>
       <td>

       <table width="100%" cellpadding="3" cellspacing="3" border="0">
        <caption>Modern BASIC: (no line numbers)</caption>
        <td>
         <form>
          <textarea rows="3" cols="80">
CLS
PRINT "Hello, world!"
END
          </textarea>
         </form>        
        </td>
       </table>

      </td>
     </tr>
    </table>

     <!--table 1/end-->

     <!--table 1b/start-->

     <table width="100%" cellpadding="3" cellspacing="3" border="0">

      <tr width="50%">
       <td>

       <table width="100%" cellpadding="3" cellspacing="3" border="0">
        <td align="center">

         <p>
          <a href="images\old\hw\030620-2010-old-basic-01a.png">
           <img src="images\old\hw\030620-2010-old-basic-01a.png" width="100" height="100">
          </a>
        </p>

        </td>
       </table>

       </td>
       <td>

       <table width="100%" cellpadding="3" cellspacing="3" border="0">
        <td align="center">
         <p>
          <a href="images\old\hw\030620-2013-modern-basic-01a.png">
           <img src="images\old\hw\030620-2013-modern-basic-01a.png" width="100" height="100">
          </a>
        </p>
        </td>
       </table>

      </td>
     </tr>
    </table>

     <!--table 1b/end-->


    <hr>

     <!--table 2/start-->

     <table width="100%" cellpadding="3" cellspacing="3" border="0">

      <tr width="50%">
       <td>

       <table width="100%" cellpadding="3" cellspacing="3" border="0">
        <caption>Old style BASIC: (GOSUB line number/RETURN)</caption>
        <td>
         <form>
          <textarea rows="20" cols="80">
10 REM
20 REM *** MAIN PROGRAM ***
30 REM
40 GOSUB 130 REM * CLEAR SCREEN
50 GOSUB 160 REM * PRINT MESSAGE
60 GOTO 999 REM * END
100 REM
110 REM *** SUB ROUTINES ***
120 REM
130 REM *** CLEAR SCREEN... 
140 CLS
150 RETURN
160 REM *** PRINT MESSAGE... 
170 PRINT "Hello, world!!
180 RETURN
999 END
          </textarea>
         </form>        
        </td>
       </table>

       </td>
       <td>

       <table width="100%" cellpadding="3" cellspacing="3" border="0">
        <caption>Modern BASIC: (GOSUB labelName/RETURN)</caption>
        <td>
         <form>
          <textarea rows="20" cols="80">
'
' *** Main program...
'
 
GOSUB clearScreen
GOSUB printMessage
END

'
' *** Sub-routines...
' 

clearScreen:
CLS
RETURN

printMessage: 
PRINT "Hello, world!"
RETURN
          </textarea>
         </form>        
        </td>
       </table>

      </td>
     </tr>
    </table>

     <!--table 2/end-->

     <!--table 2b/start-->

     <table width="100%" cellpadding="3" cellspacing="3" border="0">

      <tr width="50%">
       <td>

       <table width="100%" cellpadding="3" cellspacing="3" border="0">
        <td align="center">

         <p>
          <a href="images\old\hw\030620-2002-old-basic-02a.png">
           <img src="images\old\hw\030620-2002-old-basic-02a.png" width="100" height="100">
          </a>
        </p>

        </td>
       </table>

       </td>
       <td>

       <table width="100%" cellpadding="3" cellspacing="3" border="0">
        <td align="center">
         <p>
          <a href="images\old\hw\030620-2003-modern-basic-02b.png">
           <img src="images\old\hw\030620-2003-modern-basic-02b.png" width="100" height="100">
          </a>
        </p>
        </td>
       </table>

      </td>
     </tr>
    </table>

     <!--table 2b/end-->

    <hr>


     <!--table 3/start-->

     <table width="100%" cellpadding="3" cellspacing="3" border="0">

      <tr width="50%">
       <td>

       <table width="100%" cellpadding="3" cellspacing="3" border="0">
        <caption>Old style BASIC: (global variable names/short)</caption>
        <td>
         <form>
          <textarea rows="22" cols="80">
10 REM
20 REM *** MAIN PROGRAM ***
30 REM
40 GOSUB 130 INIT VARIABLES ***
50 GOSUB 160 REM * CLEAR SCREEN
60 GOSUB 190 REM * PRINT MESSAGE
70 GOTO 999 REM * END
100 REM
110 REM *** SUB ROUTINES ***
120 REM
130 REM *** INIT VARIABLES ***
140 m$="Hello, world!" REM * m=message
150 RETURN 
160 REM *** CLEAR SCREEN... 
170 CLS
180 RETURN
190 REM *** PRINT MESSAGE... 
200 PRINT m$
210 RETURN
999 END
          </textarea>
         </form>        
        </td>
       </table>

       </td>
       <td>

       <table width="100%" cellpadding="3" cellspacing="3" border="0">
        <caption>Modern BASIC: (local variable names/long)</caption>
        <td>
         <form>
	          <textarea rows="20" cols="80">
'
' *** Main program...
'
 
CALL clearScreen
CALL printMessage("Hello, world!") '...call to sub
END

'
' *** Sub routines...
'

SUB clearScreen
    CLS
END SUB

SUB printMessage (message$) '...message$ gets initialised here
    PRINT message$          '...message$ is a 'local' variable/NOT global
END SUB

          </textarea>
         </form>        
        </td>
       </table>

      </td>
     </tr>
    </table>

     <!--table 3/end-->
 
     <!--table 3b/start-->

     <table width="100%" cellpadding="3" cellspacing="3" border="0">

      <tr width="50%">
       <td>

       <table width="100%" cellpadding="3" cellspacing="3" border="0">
        <td align="center">

         <p>
          <a href="images\old\hw\030620-1833-old-basic-03a.png">
           <img src="images\old\hw\030620-1833-old-basic-03a.png" width="100" height="100">
          </a>
        </p>

        </td>
       </table>

       </td>
       <td>

       <table width="100%" cellpadding="3" cellspacing="3" border="0">
        <td align="center">
         <p>
          <a href="images\old\hw\030620-1835-modern-basic-03b.png">
           <img src="images\old\hw\030620-1835-modern-basic-03b.png" width="100" height="100">
          </a>
        </p>
        </td>
       </table>

      </td>
     </tr>
    </table>

     <!--table 3b/end-->


     <hr>

    <p>
     <b>NOTE(1)</b>: Both QBASIC/QB64 are, actually, <em>backwards compatible</em>...; meaning they are both capable of running: BASIC <i>old style</i> code/and, BASIC <i>modern style</i> code.
    </p>

    <p>
     <b>NOTE(2)</b>: The 6 programs written up above do, quite clearly, demonstrate that there are <b>multiple</b> different ways of writing the underlying <i>source code</i> to produce the exact same surface 'output' which is: 'Hello, world!'
    </p>



     <hr>

     <a name="introduction:qb64"></a>

     <h3>QB64</h3>

     <p>
      The term, <b>QB64</b>, stands for: QBASIC 64
      <br><br>
      QB64, is a <i>modern day</i> version of the <i>older</i> QBASIC language.
      <br><br> 
      Just like its name suggests: QB64, is a <i>64 bit</i> version of the older <i>32 bit</i> QBASIC programming language.
      </p>

     <p>
      In these pages, the BASIC version I will be using is: QB64. 
     </p>

      <p>
       Here are a couple of the reasons why I choose to use, QB64:
      </p>

      <ul>
       <li>QBASIC, can be downloaded entirely for FREE.</li>
       <li>QBASIC, works on Windows 10 Professsional (which is my current OS/Operating System).</li>
       <li>QB64, creates <i>compiled</i> code; which allows for 'stand alone' [.exe] files.</li>
       <li>Primarily, I find the QB64 language very <i>simple and easy</i> to work with...; as opposed to using far more <em>complex</em> programming languages, instead.</li>
      </ul>
     </p>

     <hr>

    <p>
     <b>NOTE(1)</b>: QBASIC, only works on Windows 32 bit operating systems.</p>
    </p>

    <p>
     <b>NOTE(2)</b>: QB64, works on Windows 32 bit/64 bit operating systems; and, on Linux/Mac.</p>
    </p>

     <hr>



   <a name="introduction:overview"></a>

    <h3>General overview: What learning BASIC will teach you...</h3>

    <blockquote>

    <p>
     Learning the BASIC programming language will teach the beginner all of the necessary programming fundamentals, including all of the following and more...
    </p>

    <ul>
     <li>Code comments</li>
     <li>DATA types:
      <ul>
       <li>Boolean: 0/1</li>
       <li>String(simple/complex: arrays) - String functions</li>
       <li>Numeric: Integer/float/long/single/double</li> 
       <li>User defined</li>
       <li>SCOPE: Global, Local, SHARED</li>
       <li>Functions: Built-in, User defined
      </ul>
     </li>
     <li>Operators:
      <ul>
       <li>Comparison: =/<>/>/</>=/<=</li>
       <li>Maths: +,-,*,/ - Maths functions</li>
       <li>Logical: AND/OR/NOT</li>
      </ul>
     </li>
     <li>Program flow:
      <ul>
       <li>sequence</li>
       <li>selection: IF/THEN/ELSE/END IF - SELECT/CASE/END SELECT</li>
      </ul>
     </li>
     <li>Filing: OPEN/CLOSE/WRITE/APPEND - Records: REC/END REC
      <ul>
       <li>DATA types: .dat/.csv/.txt/(custom) - DATA statements</li>
      </ul>
     </li>
     <li>Loops:
      <ul>
       <li>WHILE/WEND - DO/LOOP - FOR/NEXT - Recursion</li>
      </ul>
     </li>
     <li>Modular:
      <ul>
       <li>GOSUB/RETURN - SUB/END SUB - FUNCTION/END FUNCTION - RUN/CHAIN</li>
      </ul>
     </li>
     <li>Graphics: PSET, CIRCLE, LINE, BOX, DRAW/(LOGO)</li>
     <li>Sound</li>
     <li>System: SHELL/KILL/DIR/CD/MKDIR/RMDIR</li>
     <li>-etc.</lI.
    </ul>

    <p>
     Generally speaking, once the student has already learned, BASIC; then, they will find it fairly easy moving on to learn almost any other programming language.
    </p>

    <p>
     Sometimes, people 'start' off with learning BASIC; then, go on to learn far more technical languages such as: Pascal/Java/C/C++/-etc.; as well as, web page programming using: (front end) HTML/CSS/Javascript/(back end) PERL/PHP/Python/Ruby/Node/-etc.
    </p>

    <p>
     The advantage of learning BASIC...when compared to learning other far more technical languages...is it's a hell of a lot easier, especially, to begin with.
    </p>

    <p>
     For example, with some highly technical languages...just writing a simple: 'Hello, world!' program, can take <i>multiple</i> lines of code to write; but, in BASIC it's only just 'one' single line of code:
    </p>

    <hr>

    <p>
     <b>Code</b>
    </p>

    <code>
     PRINT "Hello, world!"
    </code>

    <p>
     <b>Output</b>
    </p>

    <table cellpadding="0" cellspacing="0" border="3" width="50%">
     <caption>QBASIC/QB64: Hello, world!</caption>
     <tr>
      <td>
       Hello, world!
      </td>
     </td>
    </table>

    <br>
    <hr>

    <p>
     <b>Code</b>
    </p>

    <pre>
#include &lt;stdio.h&gt;
#include &lt;stdlib.h&gt;

int main(void)
{
    printf("Hello, world!");
    return 0;
}
    </pre>

    <p>
     <b>Output</b>
    </p>

    <table cellpadding="0" cellspacing="0" border="3" width="50%">
     <caption>C: Hello, world!</caption>
     <tr>
      <td>
       Hello, world!
      </td>
     </td>
    </table>

    <br>
    <hr>

    <p>
     <b>Code</b>
    </p>

    <pre>
&lt;!DOCTYPE html&gt;
&lt;html&gt;
 &lt;head&gt;  
  &lt;title&gt;Test web page...&lt;/title&gt;
 &lt;/head&gt;
 &lt;body&gt;
  &lt;p&gt;Hello, world!&lt;/p&gt;
 &lt;/body&gt;
&lt;/html&gt;
    </pre>

    <p>
     <b>Output</b>
    </p>

 
    <table cellpadding="0" cellspacing="0" border="3" width="50%">
     <caption>HTML: Hello, world!</caption>
     <tr>
      <td>
       Hello, world!
      </td>
     </td>
    </table>

    <br>
    <hr>

    </blockquote>

   <a name="introduction:overview2"></a>

    <h3>General overview: What learning BASIC won't teach you...</h3>

    <blockquote>

    <p>
     BASIC, is in essence a MS DOS/Microsoft Disk Operating System based programming language; and, as such it is a relatively <i>older</i> programming language which leaves out such things as... 
    </p>

    <ul>
     <li>Internet programming/(quick and easy file sharing)
      <ol>
       <li>
        If you wrote a QBASIC program/(QBASIC programs being relatively 'rare'); 
        <br>you'd most probably have to send it to others through, email/(or, upload the code into GitHub - which is a 'source code' respository); 
        <br>the end receiver of the code could only get to 'view' the program output if they already have QBASIC/QB64 program installed; 
        <br>otherwise, they would have to both 'find/download' the QBASIC/QB64 program
        <br>then, load the program in;
        <br>next, run.
       </li>
       <li>
        If you wrote a Javascript program/(Javascript programs being largely 'ubiquitous'); 
        <br>it could already be included inside of a HTML [.html] web page; 
        <br>once, you've uploaded the web page to the internet; then, anybody and everybody can view it...no matter where in the world they are...; that is provided they have a web browser/with available internet connection(which most people do have, now-a-days).
       </li>
      </ol>
     </li>
     <li>the use of clickable 'links'.../(it's NOT web based programming)</li>
     <li>OOP/Object Oriented Programming/(drag and drop)</li>
     <li>Memory management</li>
     <li>-etc.
    </ul>

    <p>
     However, another way to look at it is...; learning BASIC is a very good way for 'beginners' who are <b>new</b> to programming...to pick up learning most of the 'fundamental' programming concepts really quite quickly and easily; then, later on, you can go and research into learning more...by studying how other programming languages does things.
    </p>

    <p>
     Alternatively, after having learned, QBASIC/QB64...; you could decide to move on up towards learning a more <b>advanced</b> BASIC such as Visual BASIC .Net/ASP(Active Server Pages) .Net/-etc. 
    </p>

    </blockquote>




    </blockquote>

    <p>
     <a href="#top">-Click here to return to top...</a>
    </p>

   </blockquote>


   <!--...Introduction/end.-->








   <!--history/start...-->

   <a name="history"></a>

   <blockquote>

    <h2 class="clsPaddedHeading">History</h2>

    <a name="history:wikipedia"></a>

    <p>
     Wikipedia Articles
    </p>

    <blockquote>

     <a name="history:versions"></a>

     <p>
      BASIC Programming language versions
     </p>

     <ul>
      <li><a href="https://en.wikipedia.org/wiki/BASIC">https://en.wikipedia.org/wiki/BASIC</a></li>
      <li><a href="https://en.wikipedia.org/wiki/Microsoft_BASIC">https://en.wikipedia.org/wiki/Microsoft_BASIC</a></li>
      <li><a href="https://en.wikipedia.org/wiki/QBasic">https://en.wikipedia.org/wiki/QBasic</a></li>
      <li><a href="https://en.wikipedia.org/wiki/QB64">https://en.wikipedia.org/wiki/QB64</a></li>
      <li><a href="https://en.wikipedia.org/wiki/Open_Programming_Language">https://en.wikipedia.org/wiki/Open_Programming_Language</a></li>
      <li><a href="https://en.wikipedia.org/wiki/IBM_BASIC#IBM_Advanced_BASIC">https://en.wikipedia.org/wiki/IBM_BASIC#IBM_Advanced_BASIC</a></li>
      <li><a href="https://en.wikipedia.org/wiki/Visual_Basic">https://en.wikipedia.org/wiki/Visual_Basic</a>
      <li><a href="https://en.wikipedia.org/wiki/VBScript">https://en.wikipedia.org/wiki/VBScript</a>
      <li><a href="https://en.wikipedia.org/wiki/Visual_Basic_for_Applications">https://en.wikipedia.org/wiki/Visual_Basic_for_Applications</a>
      <!--template stub...
      <li><a href=""></a>
      -->
     </ul>


     <a name="history:hardware"></a>

     <p>
      Hardware
     </p>

     <ul>
      <li><a href="https://en.wikipedia.org/wiki/Atari_ST">https://en.wikipedia.org/wiki/Atari_ST</a></li>
      <li><a href="https://en.wikipedia.org/wiki/Commodore_64">https://en.wikipedia.org/wiki/Commodore_64</a></li>
      <li><a href="https://en.wikipedia.org/wiki/IBM_Personal_Computer">https://en.wikipedia.org/wiki/IBM_Personal_Computer</a></li>
      <li><a href="https://en.wikipedia.org/wiki/Psion_Organiser">https://en.wikipedia.org/wiki/Psion_Organiser</a></li>
      <li><a href="https://en.wikipedia.org/wiki/Psion_Series_3">https://en.wikipedia.org/wiki/Psion_Series_3</a></li>
      <li><a href="https://en.wikipedia.org/wiki/RM_Nimbus">https://en.wikipedia.org/wiki/RM_Nimbus</a></li>
      <li><a href="https://en.wikipedia.org/wiki/TRS-80_Color_Computer">https://en.wikipedia.org/wiki/TRS-80_Color_Computer</a></li>
      <li><a href="https://en.wikipedia.org/wiki/ZX81">https://en.wikipedia.org/wiki/ZX81</a></li>
      <li><a href="https://en.wikipedia.org/wiki/ZX_Spectrum">https://en.wikipedia.org/wiki/ZX_Spectrum</a></li>
     </ul>

     <a name="history:people"></a>

     <p>
      People
     </p>

     <ul>
      <li><a href="https://en.wikipedia.org/wiki/John_G._Kemeny">https://en.wikipedia.org/wiki/John_G._Kemeny</a></li>
      <li><a href="https://en.wikipedia.org/wiki/Thomas_E._Kurtz">https://en.wikipedia.org/wiki/Thomas_E._Kurtz</a></li>
      <li>System:
       <ul>
        <li><a href="https://en.wikipedia.org/wiki/Dartmouth_Time_Sharing_System">https://en.wikipedia.org/wiki/Dartmouth_Time_Sharing_System</a>
       </li>
      </ul>
      <li>Hardware:
       <ul>
        <li><a href="https://en.wikipedia.org/wiki/LGP-30">LGP-30</a>
        <ul>
         <li><a href="http://ed-thelen.org/comp-hist/lgp-30-man.html">LGP-30 Programming Manual</a>
         </li>
        </ul>
        </li>
        <li><a href="https://en.wikipedia.org/wiki/PDP-11">PDP-11</a></li>
        <li><a href="https://en.wikipedia.org/wiki/Programmed_Data_Processor">Programmed Data Processor</a></li>
        <li><a href="https://en.wikipedia.org/wiki/Data_General_Nova">General Nova</a></li>
       </ul>
      </li>
     </ul>

    </blockquote>


     <a name="history:youtubevideos"></a>

     <p>YouTube Videos</p>

     <ul>
       <li><a href="https://www.youtube.com/watch?v=WYPNjSoDrqw">Birth of BASIC</a></li>
       <li><a href="https://www.youtube.com/watch?v=seM9SqTsRG4&t=300s">The basics of BASIC, the programming language of the 1980s.</a></li>

     </ul>

    </blockquote>

    <p>
     <a href="#top">-Click here to return to top...</a>
    </p>


   </blockquote>


   <!--...history/end--> 






   <!--download/start...-->

   <a name="setup:download"></a>

   <blockquote>

    <h2 class="clsPaddedHeading">Download</h2>

    <blockquote>

     <p>
      Download QB64 for FREE from off the following web sites:
     </p>

     <ul>
      <li><a href="https://www.qb64.org/portal/">https://www.qb64.org/portal/</a></li>
      <li><a href="https://en.wikipedia.org/wiki/Microsoft_BASIC">https://en.wikipedia.org/wiki/Microsoft_BASIC</a></li>
      <li><a href="https://www.qb64.net/">https://www.qb64.net/</a></li>
      <li><a href="https://softfamous.com/qb64/">https://softfamous.com/qb64/</a></li>
      <li><a href="https://www.softpedia.com/get/Programming/Coding-languages-Compilers/QB64.shtml">https://www.softpedia.com/get/Programming/Coding-languages-Compilers/QB64.shtml</a></li>
      <li><a href="https://www.schoolfreeware.com/Freeware_QB64_Download.html">https://www.schoolfreeware.com/Freeware_QB64_Download.html</a></li>
     </ul>

     <p>
      -(<b>NOTE</b>: I downloaded from the link, below. The above links I did not need to go download from...; because I already have QB64 installed/up and working.)-
     </p>

     <hr>

     <p>
      Download QB64/with help file being included; (choose Windows [.zip]) file)...
     </p>

     <ul>
      <li><a href="https://github.com/QB64Team/qb64/releases/tag/v1.4">https://github.com/QB64Team/qb64/releases/tag/v1.4</a></li>
     </ul>

     <hr>

     <p>
      <b>NOTE(1)</b>: I have in the past downloaded QB64 without the built-in help file that appears when you hit [F1] key; and, frankly, I absolutely <em>hate</em> that...; thus, forcing you to search through the internet in order to go find help! So, it's best to download a QB64 where help, actually, works.
     </p>

     <p>
     <b>NOTE(2)</b>: The download page says: QB64, can be run on many different OS: Windows 64 bit/32 bit/Linux/Mac.
     </p>

     <p>
      <b>NOTE(3)</b>: The above list was last 'updated' on: <span class="clsTimeDateStamp">14:08 02/06/2020</span>.
     </p>

     <hr>

    </blockquote>

    <p>
     <a href="#top">-Click here to return to top...</a>
    </p>


   </blockquote>


   <!--...download/end--> 















   <!--tutorials/start...--> 

   <blockquote>

   <a name="language:tutorials"></a>

   <blockquote>

    <h2 class="clsPaddedHeading">Language/Tutorials</h2>

    <blockquote>

     <p>Tutorials</p>

     <ul>

      <li>
       <a href="https://chortle.ccsu.edu/QBasic/index.html">
        Programmed Lessons in QBasic
       </a>
      </li>

     </ul>

   </blockquote>


   </blockquote>

   <!--...tutorials/end--> 






















   <!--language/reference/start-->

   <a name="language:reference"></a>

   <blockquote>

    <h2 class="clsPaddedHeading">Language/Reference</h2>

    <blockquote>

     <a name="language:reference:books"></a>

     <p>Books</p>

     <ul>

      <li>
       <a href="https://www.amazon.co.uk/Qbasic-Language-Ms-DOS-Programmers-library/dp/1871962404/ref=sr_1_5?dchild=1&keywords=qbasic&qid=1591214776&sr=8-5">
       QBasic The Language of DOS Mike James
       </a>
      </li>

      <li>
       <a href="https://www.amazon.co.uk/QBASIC-Example-Special-Programming-Que/dp/1565294394/ref=sr_1_4?dchild=1&keywords=qbasic&qid=1591214776&sr=8-4">
        QBASIC By Example/Que
       </a>
      </li>

     </ul>

     <a name="language:reference:wikibooks"></a>

     <p>Wikibooks</p>

     <ul>
      <li><a href="https://en.wikibooks.org/wiki/QBasic/Appendix">https://en.wikibooks.org/wiki/QBasic/Appendix</a></li>
     </ul>


     <a name="language:reference:websites"></a>

     <p>Web sites</p>

     <blockquote>

     <a name="language:reference:websites:wordpress"></a>

     <p>Wordpress</p>

     <ul>
      <li>
       <a href="https://gcdeeplove.wordpress.com/">
        https://gcdeeplove.wordpress.com/
       </a>
       <br>-(<b>NOTE</b>: Look for ICT 311 First Year: 'QBASIC'...; then, click/(MS Word files).)-
      </li>
     </ul>


     </blockquote>

    </blockquote>

   </blockquote>

   <!--...language/reference/end.-->





























   <!--language/start-->

   <a name="language"></a>

   <blockquote>

    <h2 class="clsPaddedHeading">Language</h2>

    <blockquote>

     <a name="language:general"></a>

     <p>General commands</p>

     <ul>

      <li>
        -
      </li>

      <li>
       -
      </li>

     </ul>

     <a name="language:data-types"></a>

     <p>Data types</p>

     <ul>
      <li>Strings
       <ul>
        <li>String literals</li>
        <li>String variables</li>
       </ul>
      </li>
     </ul>


     <a name="language:numbers"></a>

     <p>Numbers</p>

     <blockquote>

     <a name="language:numbers"></a>

     <ul>
      <li>Numbers
       <ul>
        <li>Numeric literals</li>
        <li>Numeric variables</li>
       </ul>
      </li>
     </ul>


     <p>Operators</p>

     <ul>
      <li>Maths Operators
       <ul>
        <li>Plus</li>
        <li>Minus</li>
        <li>Multiply</li>
        <li>Divide</li>
        <li>Mod</li>
       </ul>
      </li>
     </ul>


     </blockquote>

    </blockquote>

   </blockquote>

   <!--...language/end.-->












   <!--beginners/first programs/start...-->


   <a name="first-programs"></a>

   <blockquote>

    <h2 class="clsPaddedHeading">Beginners: First Programs
     <br>-(just merely one or two lines of code)-</h2>

    <blockquote>

     <a name="first-programs:text:hw01"></a>
     <h3>Filename: [hw01.bas] / Explanation: Hello, world! (print text)</h2>
     <h4>Code</h4>
     <code>
      PRINT "Hello, world!"
     </code>
     <h4>Output</h4>
     <form>
      <textarea rows="1" cols="80">
Hello, world!
      </textarea>
     </form>
     <p>
      <a href="images\text\simple\hw\030620-1735-hw01.png">
       <img src="images\text\simple\hw\030620-1735-hw01.png" width="100" height="100">
      </a>
     </p>

     <hr>

     <a name="first-programs:maths:add01-ver1"></a>
     <h3>Filename: [add01a.bas] / Explanation: Simple add - Version 1 (print numbers)</h2>
     <h4>Code</h4>
     <code>
PRINT 1 + 1
     </code>
     <h4>Output</h4>
     <form>
      <textarea rows="1" cols="80">
2
      </textarea>
     </form>
     <p>
      <a href="images\maths\simple\add\030620-1744-add01a.png">
       <img src="images\maths\simple\add\030620-1744-add01a.png" width="100" height="100">
      </a>
     </p>

     <hr>

     <a name="first-programs:maths:add01-ver2"></a>
     <h3>Filename: [add01b.bas] / Explanation: Simple add - Version 2 (print text/numbers)</h2>
     <h4>Code</h4>
     <code>
PRINT "1 + 1 = "; 1 + 1
     </code>
     <h4>Output</h4>
     <form>
      <textarea rows="1" cols="80">
1 + 1 = 2
      </textarea>
     </form>
     <p>
      <a href="images\maths\simple\add\030620-1747-add01b.png">
       <img src="images\maths\simple\add\030620-1747-add01b.png" width="100" height="100">
      </a>
     </p>

     <hr>

     <a name="first-programs:text:input"></a>
     <h3>Filename: [input01.bas] / Explanation: Simple input (capture user keyboard text/and, echo it back)</h2>
     <h4>Code</h4>
     <code>
INPUT "Enter name"; name$
<br>PRINT "Hello, "; name$; "! I, the computer, am so very pleased to meet you. ;-)"
     </code>
     <h4>Output</h4>
     <form>
      <textarea rows="2" cols="80">
Enter name? Paul
Hello, Paul! I, the computer, am so very pleased to meet you. ;-)
      </textarea>
     </form>
     <p>
      <a href="images\text\simple\030620-1808-input01.png">
       <img src="images\text\simple\030620-1808-input01.png" width="100" height="100">
      </a>
     </p>
   
     <hr>

     <a name="first-programs:maths:random-dice"></a>
     <h3>Filename: [dice01.bas] / Explanation: Throw a dice (random numbers: 1 - 6)</h2>
     <h4>Code</h4>
     <code>
RANDOMIZE TIMER
<br>PRINT INT(RND*6)+1
     </code>
     <h4>Output</h4>
     <form>
      <textarea rows="1" cols="80">
4
      </textarea>
     </form>
     <p>
      1>
      <a href="images\maths\simple\dice\030620-1802-dice01.png">
       <img src="images\maths\simple\dice\030620-1802-dice01.png" width="100" height="100">
      </a>
      2>
      <a href="images\maths\simple\dice\030620-1816-dice01b.png">
       <img src="images\maths\simple\dice\030620-1816-dice01b.png" width="100" height="100">
      </a>
     </p>
     <p>-(<b>NOTE</b>: Each time this program is run...; a different dice number will display...)-</p>
     
     <hr>

     <a name="first-programs:music"></a>
     <h3>Filename: [music01.bas] / Explanation: Simple music (play musical notes: 'ABCDEFG')</h2>
     <h4>Code</h4>
     <code>
      PLAY "ABCDEFG"
     </code>
     <h4>Output</h4>
     <p>
      <a href="images\music\simple\030620-1754-music01.png">
       <img src="images\music\simple\030620-1754-music01.png" width="100" height="100">
      </a>
     </p>
     <p>
      -(<b>NOTE</b>: This program outputs 'sound'; so, you won't actually see anything on screen; only 'hear' notes playing through your computer speakers.)- 
     </p>

     <hr>

     <a name="first-programs:graphics:circle"></a>
     <h3>Filename: [circle.bas] / Explanation: Draw a circle (graphics)</h2>
     <h4>Code</h4>
     <code>
      SCREEN 12
      <br>CIRCLE (100, 100), 100
     </code>
     <h4>Output</h4>
     <p>
      <a href="images\graphics\010620-1755-circle-01.png">
       <img src="images\graphics\010620-1755-circle-01.png" width="100" height="100">
      </a>
     </p>

     <hr>

     <p>
      <b>NOTE</b>: QBASIC/QB64 has two main screens:-
     </p>
    
      <ol>
       <li>Editor Screen - where you type in your code</li>
       <li>Output Screen - where you view the 'output' result of your code</li>
      </ol> 

     <p>
      Inside of the QBASIC/QB64 Editor Screen...
     </p>
     <ol>
      <li>Pressing function key: [F5], will make the program...</li>
      <li>...create an executable file: [.exe]</li>
      <li>...after having been created; the [.exe] file will, automatically, run...; and, so, display the program 'output' onto the Output Screen.</li>
      <li>...in order to return straight back from the Output Screen...to the Editor Screen, again; simply, press any key.
     </ol>

     <hr>


    </blockquote>

    <p>
     <a href="#top">-Click here to return to top...</a>
    </p>

   </blockquote>

   <!--...beginners/first programs/end-->


   <!--beginner to intermediate programs/start...-->

   <a name="beginner2intermediate-programs"></a>

   <blockquote>

    <h2 class="clsPaddedHeading">Beginner to Intermediate: Programs</h2>

    <blockquote>

    <p>
     The programs you see here are offered in 4 different downloadable formats:-
    </p>

    <ol>

     <li>[.txt] - the QB64 basic program as a plain text file
      <br><br>-(...for people who don't wish to 'run' the program/ 
      <br>but, just wish to view the underlying 'source code' inside of their browser)
     </li>

     <br>

     <li>[.bas] - the QB64 basic program as a plain text file/but, saved with [.bas] extension.
      <br><br>-(...for people who already have the QB64 program installed;
      <br>who wish to download the program as being a plain text file;
      <br>which they can, then, open/load up into the QB64 editor;
      <br>and, from inside there, get to view the 'source code'/as well as, compile/run.)-
     </li>
    
     <br>

     <li>[.exe] - the immediately runnable executable file
      <br><br>-(...for people who are not particularly interested in viewing what the underlying 'source code' looks like; 
      <br>but, instead, just wish to 'run' the program, immediately, straight away.)-
     </li>

     <br>

     <li>[.png] - the program 'output' as a Windows Screenshot/(or, series of screenshots)
      <br><br>-(...for people who just wish to see what the program 'output' looks like;
      <br>however, wherever possible I've included both: 'source code/output'...;
      <br>all being seen inside of 'one' same Windows Screenshot.)-
     </li>

    </ol> 

    <hr>

    <p>
      <b>NOTE(1)</b>
      <br>These [.exe] files have been <i>tested</i> to <b>download/run</b> inside of Windows 10 Professional OS/operating system, and, with no problems;  
      <br>but, I did not <i>test</i> if they work on any other OS platform...; so, <b>download</b> and <b>run</b> entirely at your <i>own</i> risk...?! 
      </p>

      <p>  
       <b>NOTE(2)</b>: 
       <br>What I can personally <b>guarantee</b> is that, to my <i>own</i> knowledge, these programs are entirely <b>bug free/virus free</b>.
      <br>Indeed, I've actually opened up and exposed what is the underlying 'source code' that lies beneath each separate program;
      <br>so that absolutely everybody can get to <i>view</i> it...; and, therefore, what you see is exactly what you get!
      </p>

      <p>
      <b>NOTE(3)</b>:
      <br>These programs, sometimes, have <b>many</b> different variations that I wrote...;
     <br>ranging from the <i>simplest</i> form of the program; 
     <br>then, gradually, increasing in difficulty level thereafter.  
    </p>




    <hr>

     <a name="beginner2intermediate-programs:maths"></a>

     <h4>Maths</h4>

     <blockquote>

     <a name="beginner2intermediate-programs:maths:12xtables"></a>

     <p><em>12 x Tables</em></p>

     <blockquote>

      <p>

       Version 1: 
       <a href="programs\maths\12xtables\version-1\12xtables1.txt">12xTables1.txt</a>
       /
       <a href="programs\maths\12xtables\version-1\12xtables1.bas">12xTables1.bas</a>
       /
       <a href="programs\maths\12xtables\version-1\12xtables1.exe">12xTables1.exe</a>

       - (prints out a user selected times tables)

       <br>

       Version 2: 
       <a href="programs\maths\12xtables\version-2\12xtables2.txt">12xTables2.txt</a>
       /
       <a href="programs\maths\12xtables\version-2\12xtables2.bas">12xTables2.bas</a>
       /
       <a href="programs\maths\12xtables\version-2\12xtables2.exe">12xTables2.exe</a>

       - (prints out each of the 12 x tables: 1-12/using INPUT$ to wait)

       <br>

       Version 3: 
       <a href="programs\maths\12xtables\version-3\12xtables3.txt">12xTables3.txt</a>
       /
       <a href="programs\maths\12xtables\version-3\12xtables3.bas">12xTables3.bas</a>
       /
       <a href="programs\maths\12xtables\version-3\12xtables3.exe">12xTables3.exe</a>

       - (prints out each of the 12 x tables: 1-12/using INKEY$ to wait)

       <br>

       Version 4: 
       <a href="programs\maths\12xtables\version-4\12xtables4.txt">12xTables4.txt</a>
       /
       <a href="programs\maths\12xtables\version-4\12xtables4.bas">12xTables4.bas</a>
       /
       <a href="programs\maths\12xtables\version-4\12xtables4.exe">12xTables4.exe</a>

       - (prints out each of the 12 x tables: 1-12/centered on screen)

      </p>      

      <p>
       1> 
       <a href="programs\maths\12xtables\printouts\040620-1522-version-1.png">
        <img src="programs\maths\12xtables\printouts\040620-1522-version-1.png" width="100" height="100">
       </a>
       2>
       <a href="programs\maths\12xtables\printouts\040620-1529-version-2.png">
        <img src="programs\maths\12xtables\printouts\040620-1529-version-2.png" width="100" height="100">
       </a>
       3>
       <a href="programs\maths\12xtables\printouts\040620-1526-version-3.png">
        <img src="programs\maths\12xtables\printouts\040620-1526-version-3.png" width="100" height="100">
       </a>
       4>
       <a href="programs\maths\12xtables\printouts\040620-1541-version-4.png">
        <img src="programs\maths\12xtables\printouts\040620-1541-version-4.png" width="100" height="100">
       </a>
      </p>

     </blockquote>

     </blockquote>




     <hr>

     <blockquote>

     <a name="beginner2intermediate-programs:maths:calculator"></a>

     <p><em>Calculator</em></p>

     <blockquote>

      <p>

       Version 1: 
       <a href="programs\maths\calculator\version-1\calculator01.txt">calculator01.txt</a>
       /
       <a href="programs\maths\calculator\version-1\calculator01.bas">calculator01.bas</a>
       /
       <a href="programs\maths\calculator\version-1\calculator01.exe">calculator01.exe</a>

       - (text based UI/add 2 numbers by typing a letter: A>dd S>ubtract M>ultiply D>ivide)

      </p>      

      <p>
       <a href="programs\maths\calculator\printouts\070620-2146-calculator-01.png">
        <img src="programs\maths\calculator\printouts\070620-2146-calculator-01.png" width="100" height="100">
       </a>
      </p>

     </blockquote>

     </blockquote>




     <hr>



     <a name="beginner2intermediate-programs:cryptography"></a>

     <h4>Cryptography</h4>

     <blockquote> 
 
     <a name="beginner2intermediate-programs:cryptography:rev-text"></a>

     <p><em>Reverse text</em></p>

     <blockquote>

      <p>

       Version 1: 
       <a href="programs\text\rev-text\rev-text.txt">rev-text.txt</a>
       /
       <a href="programs\text\rev-text\rev-text.bas">rev-text.bas</a>
       /
       <a href="programs\text\rev-text\rev-text.exe">rev-text.exe</a>

       - (backwards counting loop)
 
      </p>

      <p>
       <a href="programs\text\rev-text\printouts\050620-1540-rev-text.png">
        <img src="programs\text\rev-text\printouts\050620-1540-rev-text.png" width="100" height="100">
       </a>
 
      </p>

    </blockquote>

    </blockquote>


     <blockquote> 
 
     <a name="beginner2intermediate-programs:cryptography:games:guess-word-number"></a>

     <p><em>Game: Guess word number</em></p>

     <blockquote>

      <p>

       Version 1: 
       <a href="programs\cryptography\calc-word\calc-word.txt">calc-word.txt</a>
       /
       <a href="programs\cryptography\calc-word\calc-word.bas">calc-word.bas</a>
       /
       <a href="programs\cryptography\calc-word\calc-word.exe">calc-word.exe</a>

       - (backwards counting loop)
 
      </p>

      <p>
       <a href="programs\cryptography\calc-word\printouts\080620-0142-calc-word.png">
        <img src="programs\cryptography\calc-word\printouts\080620-0142-calc-word.png" width="100" height="100">
       </a> 
      </p>

    </blockquote>



    </blockquote> 




     <hr>

     <a name="beginner2intermediate-programs:english"></a>

     <h4>English</h4>

     <blockquote> 
 
     <a name="beginner2intermediate-programs:english:patterns:tab-steps"></a>

     <p><em>Text pattern</em></p>

     <blockquote>

      <p>

       Version 1: 
       <a href="programs\text\patterns\tab-steps\version1\tab-steps.txt">tab-steps.txt</a>
       /
       <a href="programs\text\patterns\tab-steps\version1\tab-steps.bas">tab-steps.bas</a>
       /
       <a href="programs\text\patterns\tab-steps\version1\tab-steps.exe">tab-steps.exe</a>

       - ('static' version)

       <br>

       Version 2: 
       <a href="programs\text\patterns\tab-steps\version2\tab-steps2.txt">tab-steps2.txt</a>
       /
       <a href="programs\text\patterns\tab-steps\version2\tab-steps2.bas">tab-steps2.bas</a>
       /
       <a href="programs\text\patterns\tab-steps\version2\tab-steps2.exe">tab-steps2.exe</a>

       - (constantly, 'moving' version)

      </p>


      <p>
       1>
       <a href="programs\text\patterns\tab-steps\printouts\060620-1456-tab-steps.png">
        <img src="programs\text\patterns\tab-steps\printouts\060620-1456-tab-steps.png" width="100" height="100">
       </a>
       2>
       <a href="programs\text\patterns\tab-steps\printouts\060620-1618-tab-steps2.png">
        <img src="programs\text\patterns\tab-steps\printouts\060620-1618-tab-steps2.png" width="100" height="100">
       </a>
      </p>

    </blockquote>

    </blockquote> 


    <hr>

    <p>
     <a href="#top">-Click here to return to top...</a>
    </p>




   </blockquote>



  </main>





  <footer>
   <p>
    <span id="idCopyrightMessage">
     &copy; 2020-, Mr. Paul Ramnora./All rights reserved.
    </span>
   </p>
  </footer>




 </body>

</html>
