OCPKata
=======

Kata for the dojo at 2014.03.12.

[Link to Kata](http://www.planetgeek.ch/2013/05/14/the-fluent-calculator-kata/)


Help to clone the repo
======================

	git clone https://BpCodingDojo@github.com/BpCodingDojo/FluentCalculator.git

At the end of the session, please commit your work to the directory of your team!

	git add .
	git commit -a -m "Fokakrem"
	git push



Rules of OCPKata
================

**0. Write the first failing test. Then write a factory that returns an object, or an aggregate of objects, that make the test pass.**
The factory should be limited to creating objects and linking them together. No conditionals allowed.

**1. Write the next failing test.**

**2. Can you make it pass by changing the factory and/or creating a new class and nothing else?
- If yes, great! Go back to 1.
- If not, refactor until you can.**

The refactoring should bring the system to a state where it’s possible to implement the next test just by changing the aggregate of objects that is returned by the factory. Be careful not to implement new functionality; the current test should still fail.