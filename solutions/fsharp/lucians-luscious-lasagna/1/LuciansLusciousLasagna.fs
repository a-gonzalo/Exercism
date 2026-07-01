module LuciansLusciousLasagna

// TODO: define the 'expectedMinutesInOven' binding
let expectedMinutesInOven = 40

// TODO: define the 'remainingMinutesInOven' function
let remainingMinutesInOven n = expectedMinutesInOven - n 

// TODO: define the 'preparationTimeInMinutes' function
let preparationTimeInMinutes n = n * 2 

// TODO: define the 'elapsedTimeInMinutes' function
let elapsedTimeInMinutes x y =  
                    preparationTimeInMinutes x + y 