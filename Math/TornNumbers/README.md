# The Torn Number Problem

There's normally a weird little story that goes with this problem.  I'll make up one here...

> One day while leaving the dry cleaners after dropping off my clothes, I tripped and fell ripping the return ticket in half.  The ticket number of 9801, and it was ripped right down the middle, 98 on one side, 01 on the other.  It was then that I noticed something.  If you take 98 and add 01, and square it, you get 9801.  (98+01)^2 = 9801.
> 
> There are two other four digit numbers that when ripped in half, summed, and squared produce the original number.  Find the two other numbers, and prove that there are the only 3 that do this.

## My Answer?

I wasn't sure how to prove there were only 3, so I figured I'd put in constraints until I could narrow it down to hopefully 3.  These were my brainstorming notes.

> You know the number has to be a perfect square.
> 
> You can determine what the 2nd and last digits are because the square of the sum of those two digits must end with the same last digit.
>
> S + L = M = CL  
> 8 + 1 = 9 = 81  
> 0 + 5 = 5 = 25  
> 0 + 6 = 6 = 36  
> 4 + 4 = 8 = 64  
> 8 + 4 = 12 = 144  
> 4 + 9 = 13 = 169  
> 8 + 6 = 14 = 196  
> 8 + 9 = 17 = 289
>
> So these are all of the possible 2nd and last digits.
>
> If we label our number as FSTL, we already have conditions for S and L, but what about F and T.
>
> Well, (FS + TL) = 10(F + T) + (S + L).  If we say, F+T = X and S+L = Y, then XY^2 has to be less than four digits in length.  So X has to be less than 10.
>
> F cannot be 0, so F >= 1, T < 9.
>
> We know that the first number that has a square with an answer with four digits it 32.  From here, we only have to check numbers that end in 1, 4, 5, 6, and 9.  Which turns out to be 34, 35, 36, 39, 41, 44, 45, 49, ..., 99.  Which narrow us down to 34 possibilities.
>
> It's really easy to write a program from this point check what numbers satisfy the conditions (or we can just check the sum of the first two number compared to the last two numbers).
>
> With the [program](torn_numbers.pl), we get:
>
> 2025  
> 3025  
> 9801
>
> I'm not sure if this is the best way, but it narrows down the possibilities without doing any real calculations until you have 34 numbers left.  However, the initial search space is ~70 numbers.  I'm more interested if there's a way to do it with fewer calculations.

So I can prove that at most, there are 34, but I can't prove there are only 3 unless I do all the calculations.

## The *"solution"*

I was told the way to prove only 3 of these numbers exist (in the 4 digit case) is to use [proof by exhaustion](http://en.wikipedia.org/wiki/Proof_by_exhaustion).  Once you recognize the numbers have to be perfect squares, then you know the square roots range from 32-99.  This is considered a small search space as it is, so proof by exhaustion is possible in this case.

## Bitterness

I put in so much mental work, when the brute force method was the desired answer...