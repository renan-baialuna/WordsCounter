//
//  ViewModel.swift
//  wordsCounter
//
//  Created by Renan Baialuna on 09/08/21.
//

class WordsClass {
    var word: String
    var number: Int
    
    
    init(_ word: String, number: Int) {
        self.word = word
        self.number = number
    }
}

import Foundation


class ViewModel {
    
    
    
    func processString(phrase: String) -> [WordsClass] {
        var wordsArray: [WordsClass] = []
        var words = phrase.components(separatedBy: " ")
        print(words)
        for i in words {
            if !wordsArray.isEmpty {
                var isFound = false
                for j in wordsArray {
                    if j.word == i {
                        j.number += 1
                        isFound = true
                    }
                }
                if !isFound {
                    var wc = WordsClass(i, number: 1)
                    wordsArray.append(wc)
                }
            } else {
                var wc = WordsClass(i, number: 1)
                wordsArray.append(wc)
            }
        }
        return wordsArray
    }
    
}


