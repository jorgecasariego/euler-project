//: Playground - noun: a place where people can play

import UIKit

let numbers = [1, 2, 3, 4, 3, 3]

// ***** 1. Filter into [3,3,3], then filter into [2, 4] ( Even numbers)  *****

    // Long way
    var filteredArray = [Int]()
    for number in numbers {
        if number == 3 {
            filteredArray.append(number)
        }
    }
    filteredArray

    // Short way to get [3,3,3]
    let filteredNumbers = numbers.filter({return $0 == 3})
    filteredNumbers

    // Short way to get [2, 4]
    let evenNumbers = numbers.filter({return $0 % 2 == 0})
    evenNumbers

// *****  2. transform [1, 2, 3, 4] -> [2, 4, 6, 8] using map *****

    // Long way
    var transformedArray = [Int]()
    for number in [1, 2, 3, 4] {
        transformedArray.append(number * 2)
    }
    transformedArray

    // Short way
    let transformed = [1, 2, 3, 4].map({ return $0 * 2})
    transformed


// *****  3. sum [1, 2, 3, 4] -> 10 *****

    // Long way
    var sumElements = 0
    for number in [1, 2, 3, 4] {
        sumElements += number
    }
    sumElements

    // Short way
    let sum = [1, 2, 3, 4].reduce(0, {sum, number in sum + number})
    sum

// ***** 4. Manipulate an array  *****
// Assume we have a list of tracks
let tracks = ["a", "b", "c", "d", "e"]

// algorithm should return this playlist if we select track "d"
["d", "e", "a", "b", "c"]

let selectedTrack = "d"
var playlist = [String]()
var priorTracks = [String]()

for track in tracks {
    if track == selectedTrack || playlist.count > 0 {
        playlist.append(track)
    } else {
        priorTracks.append(track)
    }
    
}
priorTracks
playlist
playlist + priorTracks

// Short way of doing
let index = tracks.index(where: { return $0 == selectedTrack})
let prefixTrack = tracks.prefix(upTo: index!)
let sufixTrack = tracks.suffix(from: index!)

let array = sufixTrack + prefixTrack


