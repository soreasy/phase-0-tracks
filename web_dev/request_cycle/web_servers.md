## Release 1

* What are some of the key design philosophies of the Linux operating system?*

Key design philosophies of the Linux OS include
- the idea that the user is computer-literate, and more or less knows what he or she is doing, and as such the user has a lot of power
- rather than provide few tools optimized to handle lots of different situations, linux provides many different tools and encourages the user to choose which is most appropriate to use
- the idea that code should be simple and modular so that it can be easily repurposed and used by other developers
- write programs that work with text streams, thus allowing programs to work with any other program that also works with text streams

* In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?*

A VPS is a virtual copy of an operating system, essentially an independent computer but without hardware. Advantages include:
- ability to test things without worrying about damaging local processes
- ability to scale quickly
- stability for hosting, ie - you don't have to worry about other customers' use of the server affecting your own use
- as it's a private server, you can download whatever software you need and have root access

* Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?*

Running programs as the root user is often unecessary and opens you up to potentially very damaging mistakes that aren't possible to make without root access.
