//
//  VocabInfo.swift
//  ProtoKanjiAppV.3
//
//  Created by Mohammed Qureshi on 2021/02/02.
//

import Foundation

struct Vocab {
    
    let vocabTitle: String
    let vocabHiragana: String
    let englishTranslation: String
    var noOfTimesSeen: Int = 0// to hold the view count? // change to number instead of No for clarity.
    //let vocabNo: Int Don't need this as solved the move to next word problem.
    mutating func incrementNoOfTimesSeen() {
        noOfTimesSeen += 1
    }//after months and months THIS WAS THE SOLUTION TO GETTING THE VIEW COUNT TO INCREMENT FOR EACH INDIVIDUAL ITEM IN THE VOCAB ARRAY!!!!!!
    //left side of operator is immutable... because its in a struct so we have to use mutating here to make it mutable. DON'T FORGET WHAT GO SAID!
    
    mutating func resetNumberOfTimesSeen() {
        noOfTimesSeen = 0
    }
    //may add reset function for the view count.
}

//structs are value types = creates a new copy with the same value
//classes are reference types = creates a copy of block of memory in the 'heap' only the instructions to locate it.
//the difference?
