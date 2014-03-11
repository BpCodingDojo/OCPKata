OCPKata
=======

Kata for the dojo at 2014.03.12.

[Link to Kata](http://www.planetgeek.ch/2013/05/14/the-fluent-calculator-kata/)


Help to clone the repo
======================

	git clone https://BpCodingDojo@github.com/BpCodingDojo/OCPKata.git

At the end of the session, please commit your work to the directory of your team!

	git add .
	git commit -a -m "Fokakrem"
	git push



Rules of OCPKata
================

**0. Write the first failing test. Then write a factory that returns an object, or an aggregate of objects, that make the test pass.**

The factory should be limited to creating objects and linking them together. No conditionals allowed.

**1. Write the next failing test.**

**2. Can you make it pass by changing the factory and/or creating a new class and nothing else?**
- **If yes, great! Go back to 1.**
- **If not, refactor until you can.**

The refactoring should bring the system to a state where it’s possible to implement the next test just by changing the aggregate of objects that is returned by the factory. Be careful not to implement new functionality; the current test should still fail.


**Optional rule:** no conditional statements at all! It means: no if, no while, no for, no ternary operator.


FizzBuzz
========

Write a program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for the multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz".

## Sample output

	1
	2
	Fizz
	4
	Buzz
	Fizz
	7
	8
	Fizz
	Buzz
	11
	Fizz
	13
	14
	FizzBuzz
	16
	17
	Fizz
	19
	Buzz
	... etc up to 100


String calculator
=================

The kata in the good old [string calculator doc](http://nimblepros.com/media/36628/string%20calculator%20kata.pdf).


