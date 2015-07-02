sudoku
======

### About

My node project starter
### Development Setup

Install npm and node. 
Enter project directory and run 

`npm install`

Start the server with 

`coffee server.coffee`

You may also want to install nodemon to watch the project changes and restart the server automatically, by running

`npm install nodemon -g`

`nodemon server.coffee`

You should be good to go!  

###Structure

#####Server
The server lives in server.coffee in the root project directory.  It takes care of serving assets and compiling them if necessary.  The views folder contains assets which compile into the public directory.  The Public folder holds assets which do not need to be compiled and are served directly by the node static asset server.  



##Notes

Table hoverover will have: price, whatever else

table detail page will have list of accessories than can be added to table