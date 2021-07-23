# langtonsAnt
a place to hold some processing and p5.js code of Langton's ant

see it live

https://greggelong.github.io/langtonsAnt


numberphile video

https://youtu.be/NWBToaXK5T0

coding train video

https://youtu.be/G1EgjgMo48U

## refactored with an ant class and multiple ants


I have refactored the code to be object oriented with an Ant() class

The ants can leave a symbol in the array.  For two ants this is a 1 or a 2

when the antworld array is displayed in the sketch colors are added.

two ants can create an ant oscillation that is pretty cool.

refreshing the browser page sets the ants in a random place

you can keep trying till you see it.


## The interactions as a complex system

The simple rules that the ants follow:
- At a blank square, turn right, flip the color of the square to your color, move forward one unit
- At a color square, turn left, flip the color of the square to blank , move forward one unit

These two ants interacting according to simple rules often create

stable oscillations. (like oscillations of in the game of life).

The oscillation periods can be short or long. (actually surprisingly long!)

Some very complex and interesting behavior comes from the interaction of

agents following simple rules. This is over and above the complex behavior of a single

ant, which is discussed in the above videos.

While some of this behavior looks random, it is in fact, deterministic.

However just because it is deterministic does not imply that you could predict the outcome.

you will just have to let it play out.  However you may be able to find some attractors like oscillations,

or the highways (long regular columns).

You can play with the ants by turning one off for a bit (checking and un-checking the box). Pausing the ant.

Then letting her go again.  She may quickly eat up the paths put down by the other ant.

What seems really amazing to me is that:

 - if you have two ants starting in an oscillating configuration (either long or short),

 - Then take out one ant, leaving the other to wander for many hundreds of steps,

 - then add the second ant back in, 

 - the ants are again in an oscillating configuration (although a different oscillating). 

 This seems that an oscillating configuration is determined by the initial configuration of the ants

 in the ant world, and it will return to an oscillating configuration even if the system is is changed

 by pausing one ant for hundreds of steps.  

 My ant world is not an infinite plane, it wraps around so is a torus or doughnut.

 This will will definitely effect the behavior of ant patterns that wrap around and hit themselves

 but I have seen this behavior in other short term oscillations.


 ## Two ants in processing 

 I have refactored the processing code to use a java class I call Ant(), similar to my javascript code.

 Here I am plotting pixels so you get to see 10 times more steps before they wrap around the torus.

 Something interesting about the oscillations of two ants:

 First I noticed that if the offset of the second ant has both the x offset and y offset the same it will not 

 create an oscillation (at least i didn't see one, perhaps after tens of thousands of steps).
 
 Then I noticed that for there to be an oscillation, one of offsets for the second ant, either the x or y,

 must be odd, and the other even.  

 If both are even or odd there will be no oscillation.  

 here is some of my investigation:

 - offx 2, offy of 1, 
 - offx 30, offy 7,
 - offx 20, offy 5
 - offx 7 , offy 2 (but not 3)
 - offx 7 , offy 4 (this is a good one)
 - offx 154, offy 169 (this has nice highways)
 - offx 35, offy,40 (this is creates two iconic Langton's ant highways that get eaten by the other ant)
 - offx 200, offy 105 (creates long highways that in a very long period oscillation)
 - offx 58, offy 167 
 - offx 60, offy 1 (this is a nice long one but needs to be on torus)
 - if you reverse these they are different oscillations

 as far as I have seen one has to be odd and the other even to get an oscillation. Both even or both odd 

 no oscillation.     

## refactor javascript Langton's ant

- [ ] set the first ant to the center of the ant world
- [ ] write an function that randomly pics an offset for x and y of the second ant
- [ ] display in the html the x and y offset  ( so you can record the ones that make interesting oscillations)
- [ ] put in a button and function for start over, instead of just refreshing
- [ ] could you write an algorithm that would check for oscillations, you could sum the array and if it ever gets smaller it is an oscillation.  you would not even need to display it.






