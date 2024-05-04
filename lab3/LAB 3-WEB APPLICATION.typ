#import "@preview/charged-ieee:0.1.0": ieee

#set page(footer: context [
  ISET BIZERTE
  #h(1fr)
  #counter(page).display(
    "1/1",
    both: true,
  )
])

#show: ieee.with(
  title: [#text(smallcaps("Lab #3: Web Application with Genie"))],
  authors: (
    (
      name: "Mohamed Habib Ouadhour",
      department: [Dept. of EE (AII21)],
      organization: [ISET Bizerte --- Tunisia],
      email: "ouadhourhabib@yahoo.com"
    ),
  ),
  index-terms: ("Scientific writing", "Typesetting", "Document creation", "Syntax"),
  bibliography: bibliography("refs.bib"),
)
= Introduction
In this lab, I created a basic web application using *Genie* framework in Julia. This application will allow us to control the behaviour of a sine wave, given some adjustble parameters.
 #figure(
	image("50237769-removebg-preview.png", width: 30%, fit: "contain"),
	caption: "Genie"
	) <fig:repl>
As we know to build and run a web application we need a Julia and HTML codes. 
#figure(
    stack(
        dir: ltr,       // left-to-right
        spacing: 1cm,   // space between contents

        image("Julia_Programming_Language_Logo.svg.png", width: 20%, fit: "contain"),
        image("HTML5_logo_and_wordmark.svg.png", width:15%, fit: "contain"),
    ),
)
+ *Testing Codes :*
- Julia :
 #figure(
	image("Capture2.PNG", width: 120%, fit: "contain"),
	caption: "Code of Julia"
	) <fig:repl>
 
 - HTML :
  #figure(
	image("Capture3.PNG", width: 128%, fit: "contain"),
	caption: "Code of HTML"
	) <fig:repl>
 - Result :

  ```julia
  julia> using GenieFramework
  julia> Genie.loadapp() # Load app
  julia> up() # Start server
  ```

  #figure(
	image("Capture6.PNG", width: 110%, fit: "contain"),
	caption: "Julia REPL"
	) <fig:repl>
 
 We can now open the browser and navigate to the link #highlight[#link("localhost:8000")[localhost:8000]]. We will get the graphical interface as in _Figure 6_.
 
  #figure(
	image("Capture5.PNG", width: 120%, fit: "contain"),
	caption: "Graphical interface"
	) <fig:repl>

 = Exercices
As we know the mathematique equation of sin wave is:
#image("captude.eqt.PNG")So I need to complete the missing variables: 
#highlight[Phase] and #highlight[Offset]

- * First task:*

In the first task, I added a slide that modify the _Phase_ 

*ranging between $-pi$ and $pi$, changes by a step of $pi/100$*
   #figure(
	image("Capture7.PNG", width: 71%, fit: "contain"),
	caption: "Adding slide for Phase"
	) <fig:repl>
   #figure(
	image("Capture8.PNG", width: 80%, fit: "contain"),
	caption: "Adding the phase function in Julia"
	) <fig:repl>

   #figure(
	image("Capture9.PNG", width: 100%, fit: "contain"),
	caption: "Graphical Interface"
	) <fig:repl>
 
- * Second task:*
Then in the second task, I added a slide that modify the _Offset_ 
*varies from $-0.5$ to $1$, by a step of $0.1$.*
   #figure(
	image("Capture10.PNG", width: 100%, fit: "contain"),
	caption: "Adding Slide for Offset"
	) <fig:repl>
   #figure(
	image("Capture11.PNG", width: 100%, fit: "contain"),
	caption: "Adding the offset function in Julia"
	) <fig:repl>

-> Final result of the graphical interface with all the sin wave variables (_Figure 12_).
   #figure(
	image("Capture12.PNG", width: 109%, fit: "contain"),
	caption: "Final Graphical Interface"
	) <fig:repl>
 
 = Conclusion
This lab permit me to learn how to create a web application using Genie in Julia.
 