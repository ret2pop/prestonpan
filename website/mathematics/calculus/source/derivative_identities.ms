.EQ
delim $$
.EN
.TL
Derivative Identities
.AU
Preston Pan
.AI
Pacific School of Innovation and Inquiry

.NH 1
Introduction
.PP
Now that you know how to calculate the derivative of a specific very simple function,
you might now ask how you might take a derivative of a more complicated function, perhaps
involving functions that are the sum or product of two other simpler functions, or the
composition of two functions.

.PP
In order to get to a general case, we can look at a specific case. Say, for example,
we want to take the derivative of $f(x) = x sup 2 + x$ (we are using h for delta x here because
that is the actual convention):

.EQ
f'(x) = {{(x + h)} sup {2} + x + h - {x} sup {2} - x} over h
.EN
.EQ
f'(x) = {{x} sup {2} + 2xh + {h} sup {2} + x + h - {x} sup 2 - {x}} over h
.EN
.EQ
f'(x) = {2xh + {h} sup {2} + h} over h
.EN
.EQ
f'(x) = 2x + 1 + h
.EN

.PP
and as h becomes infinitely small, the resulting derivative is 2x + 1.

.PP
But we know already that the slope of x was equal to one. You learn that in 9th grade.
And we know that 2x is the derivative of $x sup 2$. So it seems like this should be true:

.EQ
(f + g)' = f' + g'
.EN

.PP
or in words: adding the functions and then taking the derivative is exactly the same as taking
the derivative of both the functions first then adding them. In other words: the order of adding
and taking the derivative doesn't matter. But is this really true?

.PP
In fact, it is! If we use two general functions f and g, we can see that this is true for any
two functions that you pick:

.EQ
(f + g)' = {f(x + h) + g(x + h) - f(x) - g(x)} over h
.EN

and if we just rearrange and separate the g and f terms:
.EQ
(f + g)' = {f(x + h) - f(x)} over {h} + {g(x + h) - g(x)} over h = f' + g'
.EN

If that is not a clear illustration, this is extremely easy to figure out on your own given
the general method.

It should be clear that multiplication can be done in the same general process. However,
it is a little bit more complicated. I suggest trying to figure it out on your own before
you read the solution below:

.EQ
(f * g)' = {f(x + h)g(x + h) - f(x)g(x)} over h
.EN
in order for this solution to work, we must subtract and add a term $f(x + h)g(x):$
.EQ
(f * g)' = {f(x + h)g(x + h) - f(x + h)g(x) + f(x + h)g(x) - f(x)g(x)} over h
.EN
and we factor some terms out:
.EQ
(f * g)' = {f(x + h)(g(x + h) - g(x)) + g(x)(f(x + h) - f(x))} over h
.EN
and we can clearly see that:
.EQ
(f * g)' = f(x + h){g(x + h) - g(x)} over {h} + g(x){f(x + h) - f(x)} over {h}
.EN
as $h$ approaches zero, $f(x + h)$ approaches $f(x)$. Also, we can see that some of
these terms look like derivatives, so:
.EQ
(f * g)' = f(x)g'(x) + g(x)f'(x).
.EN

.PP
And this will work with any two functions where you know their derivatives. Isn't that cool?

.NH 1
The power rule
.PP
Up until now, we assumed that you could take the derivative of an arbitrary function $f$ and
$g$ and gave rules for computing the derivatives of their products and sums based on that
assumption. However, it's not clear how you are supposed to just
.I "know"
the derivatives of many functions, including sine and cosine, as well as $x sup n$. Of course,
we figured it out for $x sup 2$, but there are many functions that we have not explained the
derivative of. How do we find these derivatives?

.PP
Of course, like with all derivatives of functions, you can calculate them with the general
derivative definition. Here, we will discuss the power rule, or $x sup n$ for any positive
integer $n$.

.PP
If we just plug it into the general form directly:
.EQ
f'(x) = {{(x + h)} sup {n} - {x} sup {n}} over h
.EN
You might observe that we need to somehow expand the binomial ${(a + b)} sup n$ for arbitrary n.
You might try doing this by expanding for $n = 1$, $n = 2$, etc... and finding a pattern:
.EQ
{(a + b)} sup 0 = 1
.EN
.EQ
{(a + b)} sup 1 = a + b
.EN
.EQ
{(a + b)} sup 2 = a sup 2 + 2ab + {b} sup {2}
.EN
.EQ
{(a + b)} sup 3 = a sup 3 + 3{a} sup {2}b + 3{b} sup {2}a + {b} sup {3}
.EN
and if you keep on doing this for higher $n$, you will see that:
.EQ
{(a + b)} sup n = a sup n + n{a} sup {n - 1} {b} sup {1} + ... b sup n
.EN
.PP
the details of this are left as an exercise to the reader, and don't really matter for this
proof. The only things that matter are that the exponent for b gets larger in the terms not
listed. If you want to be rigorous, you can try proving this by induction.

.PP
If you substitute this for the binomial for the derivative definition:
.EQ
(x sup {n})' = {x sup n + n{x} sup {n - 1}h + ... h sup n - x sup n} over h
.EN
if we cancel out the $x sup n$ terms:
.EQ
(x sup {n})' = {n{x} sup {n - 1}h + ... {h} sup {n}} over h
.EN
.EQ
(x sup {n})' = n{x} sup {n - 1} + {... {h} sup {n}} over h
.EN
.EQ
(x sup {n})' = n{x} sup {n - 1} + ... {h} sup {n - 1}
.EN
Now we recall that according to our binomial expansion, the exponent
for $h$ will always grow as we continue looking to the right, and the term $n{x} sup {n - 1} h$ had an exponent of one, which means that each h in the ... will have an exponent of two or more,
so when we cancel everything out, everything in that ... will
still have an h term. Because h is infinitely small, we may assume that everything not expanded
in ... will be almost zero, so our answer here is:
.EQ
(x sup {n})' = n{x} sup {n - 1}.
.EN

.NH 1
Conclusion

.PP
Combining knowledge from all of these sections, you will be able to take the derivative
of an arbitrary polynomial. Next time we will talk about the chain rule and its importance.
