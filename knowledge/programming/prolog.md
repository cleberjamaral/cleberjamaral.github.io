# prolog

Here I have some notes about prolog. I am using [GNU Prolog](http://www.gprolog.org/). More information can be found at [GNU Prolog manual](http://www.gprolog.org/manual/gprolog.html) and [GNU Prolog tutorial](http://mgencer.com/files/PrologTutorial.html).

### First steps

Prolog is a symbolic language in which we declare facts and rules to then ask questions that will be answered based on these data. 

### Installing gnu prolog

Download and uncompress [gprolog-1.4.5](http://www.gprolog.org/). After going to gprolog folder:

`$ ./configure  
$ make  
$ sudo make install`

### Running a simple application on gnu prolog

Starting in a very simple way, let us prepare a set of facts. In gnu prolog, it must be written in a file. Let us considerer the file **zoo.pl** with the following content:

`animal(turtle).   
animal(tiger).   
animal(giraffe).`

Running gnu prolog on the folder we have the file zoo.pl:

`$ gprolog  
GNU Prolog 1.4.5 (64 bits) Compiled Apr 12 2020, 18:50:29 with gcc   
By Daniel Diaz   
Copyright (C) 1999-2020 Daniel Diaz  
|?-` 

Importing **zoo.pl** and making first assertion:

`|?- consult(zoo).  
|?- animal(X).`

The answer will be `X = turtle ?`, pressing `;` it shows `X = tiger ?`, pressing `;` again it shows the last true value for X: `X = giraffe`. The command `consult(file)` and be replaced by `[file]`.

In fact, currently, it is all we have in the database as we can check using listing command:

`|?- listing.  
  
% file: /media/data/zoo.pl  
  
animal(turtle).   
animal(tiger).   
animal(giraffe).  
  
yes  
|?-`

To exit from gnu prolog:

`|?-` Ctrl+C, then `e` \(to exit\).

### To be continued...

I am following the material from [http://www.cs.trincoll.edu/~ram/cpsc352/notes/](http://www.cs.trincoll.edu/~ram/cpsc352/notes/) which is very practical.



