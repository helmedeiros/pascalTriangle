About PascalTriangle [![Build Status](https://travis-ci.org/helmedeiros/pascalTriangle.png?branch=fixingErrors)](https://travis-ci.org/helmedeiros/pascalTriangle) [![Coverage Status](https://coveralls.io/repos/helmedeiros/pascalTriangle/badge.png?branch=master)](https://coveralls.io/r/helmedeiros/pascalTriangle?branch=master)
==============

## What is Pascal's triangle ##

In mathematics, Pascal's triangle is a triangular array of the binomial coefficients. 
It is named after the French mathematician Blaise Pascal in much of the Western world, although other mathematicians studied it centuries before him in India, Greece, Iran, China, Germany, and Italy.
The rows of Pascal's triangle are conventionally enumerated starting with row n = 0 at the top. 
The entries in each row are numbered from the left beginning with k = 0 and are usually staggered relative to the numbers in the adjacent rows. 
A simple construction of the triangle proceeds in the following manner. On row 0, write only the number 1. Then, to construct the elements of following rows, add the number above and to the left with the number above and to the right to find the new value. 
If either the number to the right or left is not present, substitute a zero in its place. 

For example, the first number in the first row is 0 + 1 = 1, whereas the numbers 1 and 3 in the third row are added to produce the number 4 in the fourth row.

## What platforms are supported by PascalTriangle? ##

PascalTriangle supports Ruby 1.9.2, 1.9.3, 2.0 and **works well on Windows** as well
as many operating systems from the Unix family (Linux, Mac OS X, BSD flavors).

## Install and run it ##

    $ git clone --depth=50 --branch=master git://github.com/helmedeiros/pascalTriangle.git
    $ cd pascalTriangle
    
    $ ruby -I bin:lib bin/pp_pascal.rb 13 

                                                     1                                                      
                                                 1       1                                                  
                                             1       2       1                                              
                                         1       3       3       1                                          
                                     1       4       6       4       1                                      
                                 1       5       10      10      5       1                                  
                             1       6       15      20      15      6       1                              
                         1       7       21      35      35      21      7       1                          
                     1       8       28      56      70      56      28      8       1                      
                 1       9       36      84     126     126      84      36      9       1                  
             1       10      45     120     210     252     210     120      45      10      1              
         1       11      55     165     330     462     462     330     165      55      11      1          
     1       12      66     220     495     792     924     792     495     220      66      12      1     
