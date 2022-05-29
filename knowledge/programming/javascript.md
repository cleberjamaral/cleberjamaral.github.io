# javascript

This is a very useful article showing [how to replace jquery code by plain javascript](http://youmightnotneedjquery.com/) equivalents.

I want to try [jslint](http://www.jslint.com) to improve my JavaScript coding.

Something I have to improve in JS is the way to debug code. Maybe this [article](https://flaviocopes.com/javascript-debugging/) can be useful.

A snippet to [avoid function call flooding](https://jsfiddle.net/cleberjamaral/r2vawox3/34/). It is useful in situations in which we have multiple calls of a function but it is important to avoid flooding which may stress the system and give some undesired visual outcomes.

### MERN Stack

* MongoDB: A document-based (no-sql) open source database
* Express: A web application framework for Node.js
* React: A JavaScript front-end library
* Node.js: A JavaScript runtime environment

Mongoose: A schema-based solution to model application data



### Context and scope tricks

A few commands that can run directly on a browser console that shows how JS context and scope can be trick, specially for whom is familiar with other languages like Java and C++.

```
var obj={foo:function(){console.log(this);}}; obj.foo(); //{foo: f}
var obj={foo:()=>{console.log(this);}}; obj.foo(); //Window{0: global, ...}
var name="bob"; function foo(){return name;}; console.log(foo()); //bob
var name="bob"; foo=()=>{return name;}; console.log(foo()); //bob
function foo(){var name="bob";}; foo(); console.log(name); //undefined
foo=()=>{var name="bob";}; foo(); console.log(name); //undefined
```
