.fam T
.nr PS 10p
.nr VS 15p
.ds CH
.
.
.defcolor linecolor rgb 0.6f 0.6f 0.6f
.defcolor headingcolor rgb 0.5f 0.5f 0.5f
.
.
.de heading
.   nf
.   ps 14
.   B "\\$1"
\h'0n'\v'-1.2n'\
\m[headingcolor]\
\l'\\n(.lu\(ul'\
\m[default]
.   ps 10
.   sp -.2
.   fi
..

.de BL
.IP \(bu 2
..

.ce 2
.ps 18
.B "Preston Pan"
.ps 10
https://prestonpan.tech
.TS
tab(;) nospaces;
l rx.
808-Yates St.
Victoria, V8W 1L8;T{
.I "+1 (250) 508-5167"
T}
British Columbia, Canada;T{
.I "preston@nullring.xyz"
T}
.TE

.heading "Education"
.TS
tab(;) nospaces;
rW15|lx.
\m[default]2017 - 2021\m[linecolor];T{
.B "Sir Winston Churchill Secondary"
\(en Vancouver, BC
.br
.sp .5
T}
\m[default]2022 - now\m[linecolor];T{
.B "Pacific School of Innovation and Inquiry"
\(en Victoria, BC
.br
T}
.TE
\m[default]
.heading "Projects"
.QS
.B "Note "
\(en
.I "All my projects have their respective soure code avaiable at "
.UL "https://git.prestonpan.tech".
.BL
.B "The Null Webring"
\(en
The Null Webring is a webring that I run which has an associated website: https://nullring.xyz.
.br
.BL
.B "The Null Identity"
\(en
An organization that I created that focuses on explaining
science and technology from a satirical-pseudoreligious context,
with an associated website: https://society.nullring.xyz. I wrote
the website with a primitive templating language/static site generator
in pure POSIX shell script which generates the website from simpler template
and data files.
.BL
.B "Snake3"
\(en
Although this was a small project, it showcases my skills at writing man pages in the roff
format and my ability to come up with novel algorithms, as well as working with threading
in the C programming language. It's a simple snake game in the terminal that works
without the curses library. It was also a collaboration with Kai Stevenson: https://kaistevenson.com. You can get
the source code from https://prestonpan.tech/files/snake3/.
.BL
.B "NoExcess"
\(en
NoExcess is a fully featured turing complete programming language that I have written.
It is heavily inspired by scheme, and like scheme, it is a functional programming
language. It was made to have a simple set of built-in functions, and a builtin
way to declare variables and functions. Float, integer, boolean, and string datatypes
are also supported along with the list, function and symbol datatypes, just like
in other lisp-like languages.
.BL
.B "COMAS"
\(en
Short for the computer operated math assistance program. It will do extremely
complex calculations (operations within quaternionic functional tensors) in the future,
but right now only quaternions are fully supported. It comes with a clever way to
represent hyperreal numbers as a non-communatative derivative operator division
ring.

.heading "Skills"
.QS
.BL
.B "Systems"
\(en
Extensive knowledge of operating systems such as GNU/Linux, OpenBSD, NetBSD, and 9front/plan9, as I have used all of these systems
as daily drivers on my personal machine and as servers.
.BL
.B "Sysadmining"
\(en
I sysadmin my own server where I host multiple websites, an email server, git server, and more. As a result, I have knowledge
of many standard tools for sysadmining (docker, ssh, common servers and daemons) and have knowledge of many different operating
systems.
.BL
.B "Programming Languages"
\(en
I have good knowledge of c, python, shell, x86 assembly, and HTML/css/Javascript.
.BL
.B "Development tools"
\(en
Knowledge of standard collaborative development tools (command line git, writing UNIX man pages, using build systems like make/cmake/autotools)
as well as writing papers in LaTeX and roff.
.BL
.B "Mathematics"
\(en
I have knowledge of mathematics up to about a 3rd year university level due to self study, and have gotten distinction in mathematics
contests such as the Fermat Waterloo math competition (knowledge of multivariable calculus, linear algebra, discrete mathematics,
and ordinary differential equations, among other topics).
.BL
.B "Physics"
\(en
Aside from the mathematics which is of course a very important skill in physics, I have done self study on many advanced
university level topics such as electrodynamics and kinematics from a multivariable calculus perspective. I am also working
with two classmates on a completely novel grand unified theory of physics, which will be published on my website when it
is done.
.BL
.B "Music"
\(en
I've been playing piano for more than 10 years in total, and have been singing for as long as I can remember.
Some of my piano improvisation is on my website.
.QE
