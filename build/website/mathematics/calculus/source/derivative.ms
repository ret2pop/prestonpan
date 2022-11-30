.EQ
delim $$
.EN
.TL
The Derivative
.AU
Preston Pan
.AI
Pacific School of Innovation and Inquiry

.NH 1
Introduction
.PP
The derivative operator is one of the most important
concepts in calculus, and one of the fundamental building blocks
for all advanced studies regarding STEM. Therefore, it is good
to know the basics behind the subject. I will be introducing them
from the perspective of infinitesimal number, or the hyperreal number
system as it is more formally known.

.PP
Imagine that you are a physicist studying rate of change. You know that you can measure
the position of a certain object through time, and that therefore:

.EQ
v sub average = {d sub final - d sub initial} over {t sub final - t sub initial}
.EN

If you've taken a grade 11 physics class, you should recall that this is because measuring
the slope of a line gives you the amount change of d (displacement) in units of t (time), or as
the math puts it, the ratio between the change in d (displacement) over t (time) is equal to the
average velocity.

.PP
As a concrete example, imagine I am walking across a 100m road, with only two directions:
forwards and backwards. If I start 20m into the road, and after 10 seconds of walking I end
up 30m into the road, my final displacement would be 30m, my initial displacement would be 20m, and
the amount of time that elapsed was 10 seconds (my initial amount of time would be 0s into the
experiment, and my final amount of time would be 10 seconds). Therefore:

.EQ
v sub average = {30 - 20} over {10 - 0} = 1m/s
.EN

The above result concludes that on average between the 10 seconds we were walking, we traveled 1m/s.
Note that this does not mean that we traveled 1m/s all the time; it could be the case that we traveled
0.5m/s some of the way and 2m/s some other part of the way and it all averaged out to be 1m/s.
From here we can ask a very important question: is there a way we can find the velocity such that instead
of giving an average value, we can give an exact value for a specific point in time? Or, another way to
phrase the question: how to we get the velocity at an instantaneous moment in time instead of over a period
of time?

.NH 1
The Derivative
.PP
In fact, there is a way. Instead of taking the average over some patch of time, we take the average over
an
.I "infinitely small"
amount of time. In this way, we can calculate the near-instant speed of an object with infinitely small
inaccuracy.

.PP
Let's take a simple concrete example of what I am describing. Given a simple function $ d = t sup 2 $ where $ t $ is
time and $ d $ is displacement, we want to get the instantaneous velocity at a general point
(time and position respectively) $ (t sub initial, d sub initial) $ with their inifinitely small changes in distance
and time being \[*D]t and \[*D]d respectively:

.EQ
d sub final = d sub initial + \[*D]d
.EN
.EQ
t sub final = t sub initial + \[*D]t
.EN
.EQ
v sub average = {d sub final - d sub initial} over {t sub final - t sub initial}
.EN
.EQ
v sub average = {d sub initial + \[*D]d - d sub initial} over {t sub inital + \[*D]t - t sub initial}
.EN
.EQ
v sub average = {\[*D]d} over {\[*D]t}
.EN

in words, we step through an infinitely small amount of time (\[*D]t) and then we can see what the resulting
infinitely small step in displacement is (\[*D]d).

.PP
That might make sense, but how do we actually calculate what $ \[*D]d over \[*D]t $ is?
We have too many variables, we can't solve for both displacement and time unless we have more information.
Well, remember,
we have a function that relates the amount of time that passes to the amount of displacement that happens.
We can use that in order to get more information about how displacement and time are related so that
we can express everything in terms of one variable, time. This next section is focused on replacing
all the displacement variables with time variables, kind of like substitution with systems of linear equations.

.NH 1
Calculations
.EQ
d = t sup 2
.EN
.EQ
d sub initial = t sub initial sup 2
.EN
.EQ
d sub final = t sub final sup 2
.EN

and all of this must be true by definition. Given this:

.EQ
d sub final = d sub initial + \[*D]d
.EN

so we know that:

.EQ
d sub initial + \[*D]d = t sub final sup 2
.EN

but we also know that $ t sub final = t sub initial + \[*D]t $, so:

.EQ
d sub initial + \[*D]d = {(t sub initial + \[*D]t)} sup 2
.EN

.EQ
\[*D]d = {(t sub initial + \[*D]t)} sup 2 - d sub initial
.EN

but remember:

.EQ
v sub average = {\[*D]d} over {\[*D]t}
.EN

so:

.EQ
v sub average = {{(t sub initial + \[*D]t)} sup 2 - d sub initial} over \[*D]t
.EN

But:

.EQ
d = t sup 2
.EN

So:

.EQ
d sub initial = t sub initial sup 2
.EN

And, therefore:

.EQ
v sub average = {{(t sub initial + \[*D]t)} sup 2 - t sub initial sup 2} over \[*D]t
.EN

So now we can finally do some math in order to figure out what velocity is, where the rest
should just be easy grade 11 mathematics. We can expand the binomial here:

.EQ
v sub average = {t sub initial sup 2 + 2t sub initial \[*D]t + \[*D]t sup 2 - t sub initial sup 2} over \[*D]t
.EN

.EQ
v sub average = {2t sub initial \[*D]t + \[*D]t sup 2} over \[*D]t
.EN

.EQ
v sub average = 2t sub initial + \[*D]t
.EN

What does this equation mean? It means that this average velocity over an infinitely small period in time is going
to grow at a rate of $ 2t + \[*D]t $. In other words, for any point in time, the velocity at that point in time will always be
$ 2t + \[*D]t $. First of all, since \[*D]t is infinitely small, we tend to ignore that term and just say the velocity
at any given moment in time is going to be $ 2t $. Second of all, instead of being an average velocity, this starts
becoming more like an instantaneous velocity. So we say:

.EQ
v = 2t
.EN

because we used a general point fot $ t sub initial $, we've shown that it works for every point, so we can represent
the resulting instantaneous velocity as a function. Look at what we've just done: we've taken a function of
position in terms of time ($ d = t sup 2 $) and turned it into a function of
.I "velocity"
in terms of time ($ v = 2t $). This is what people mean when they say taking a derivative. Since velocity is the measurement
of the change of displacement over time, what people mean when they say to take a derivative of a function is to take
the rate of change of that function, or how much that function changes over time (or another variable).

.NH 1
General Form

.PP
In fact, instead of using a specific function $d = t sup 2$, we can find the general form of a derivative for any function.
Suppose we know that $d = f(t)$ where $f(t)$ is our general function relating displacement to time. We can do the same
process as before except more abstractly:

.EQ
d sub initial = f(t sub {initial})
.EN
.EQ
d sub final = f(t sub {final})
.EN
.EQ
\[*D]d = f(t sub initial + \[*D]t) - d sub initial
.EN
.EQ
\[*D]d = f(t sub initial + \[*D]t) - f(t sub {initial})
.EN
.EQ
f'(t) = {f(t sub initial + \[*D]t) - f(t sub {initial})} over \[*D]t
.EN

Where $f'(t)$ is the derivative of $f(t)$. Of course, I skipped a lot of steps, but all the steps that I skipped we already
went over in another form above. I leave the specific details as an excercise.

.PP
Of course, we don't just use derivatives for physics, so time sometimes isn't the thing that is changing in our equations.
The true definition of a derivative is:
.EQ
f'(x) = {f(x + \[*D]x) - f(x)} over \[*D]x
.EN
where x is a general variable we are measuring the change of. Also, note that the
.I "initial"
subscript is removed because there is no final or initial x anymore, there's an instantaneous change.

.NH 1
Conclusion

.PP
Think about what we've done. We started with a way to get the average velocity, we came up with a question regarding
instantaneous velocity, then we used an approach using infinitely small numbers in order to solve the problem. Every
step of the way started with a less abstract problem, which we then generalized in order to solve more general problems.
This is the fundamental skill of getting better at anything, not just mathematics. With that, I think this is a good
end to this article.
