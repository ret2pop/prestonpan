.EQ
delim $$
.EN
.TL
Linear Algebra Introduction
.AU
Preston Pan
.AI
Pacific School of Science and Inquiry

.PP
Linear algebra is a subject that is worthy of studying if you are looking
to analyze data in any systematic way, or if you are attempting to represent
multidimensional (or multivariable) quantities in a structured way.
Therefore, everyone in STEM and even in the social sciences should know about
linear algebra and a little bit of the mathematical theory behind it.

.PP
I will be introducing subjects regarding linear algebra from the perspective
of physics, though you do not need to know much physics in order to understand
most of my explanations.

.PP
You might know that in high school physics, all the equations are introduced
as one dimensional equations (that is to say, most equations that are introduced
only work if the object or objects in question only move forwards and backwards,
or any other singluar direction). Of course, in real life, there are at least
three spatial dimensions, so one dimensional equations just won't model real
life well. In these scenarios, it is useful to consider linear algebra as a
systematic way to represent direction and motion in three dimensions. With
this motivation, we start investigating.

.PP
One way we can represent two dimensional space is with a coordinate system. For
example, we can have a point $(3, 2)$ which represents a single point three
units right and two units up in a coordinate system.

.G1
coord x 0, 11 y 0, 11
3 2
"(3, 2)" above at 3,2
.G2

.PP
Now, let's imagine that this point $(3, 2)$ represents a force in a certain direction.
For example, we can draw a line from the origin to this point and the resulting force's
magnitude will be represented by the length of the line in question (which can be obtained
via the pythagorean theorem).

.G1
draw solid
coord x 0, 11 y 0, 11
0 0
3 2
"(3, 2)" above at 3,2
"$sqrt {3 sup 2 + 2 sup 2}$" above at 1,2
.G2
