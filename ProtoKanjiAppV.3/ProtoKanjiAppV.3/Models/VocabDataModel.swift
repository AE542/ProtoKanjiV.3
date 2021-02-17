//
//  VocabDataModel.swift
//  ProtoKanjiAppV.3
//
//  Created by Mohammed Qureshi on 2021/02/02.
//
import Foundation


var vocabNumber = 0
 //changed from struct to class as we want to get this data and use it elsewhere not just call its value as with a struct...but maybe as a struct its better as we just want it to read the data only without changing it.


struct VocabBuilder {
    var n1LevelVocab = [Vocab(vocabTitle: "上達", vocabHiragana: "じょうたつ", englishTranslation: "Improvement", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "乗り越える", vocabHiragana: "のりこえる", englishTranslation: "To Push Through", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "耐久性", vocabHiragana: "たいきゅうせい", englishTranslation: "Durability", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "促す", vocabHiragana: "うながす", englishTranslation: "To urge", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "一律", vocabHiragana: "いちりつ", englishTranslation: "Across the board", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "押し切り", vocabHiragana: "おしきり", englishTranslation: "Objection", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "打ち込む", vocabHiragana: "うちこむ", englishTranslation: "To input", noOfTimesSeen: 0) ,
                      Vocab(vocabTitle: "溶け込む", vocabHiragana: "とけこむ", englishTranslation: "To get used to", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "放り込む", vocabHiragana: "ほうりこむ", englishTranslation: "Throw into (something)", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "後継者", vocabHiragana: "こうけいしゃ", englishTranslation: "Successor", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "差しかける", vocabHiragana: "さしかける", englishTranslation: "To approach", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "廃れる", vocabHiragana: "すたれる", englishTranslation: "Go out of fashion", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "絡む", vocabHiragana: "からむ", englishTranslation: "To become entangled/stuck", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "軽快な", vocabHiragana: "けいかいな", englishTranslation: "Rhythmic", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "和やかな", vocabHiragana: "なごやかな", englishTranslation: "Calm,Gentle", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "煌びやかな", vocabHiragana: "きらびやかな", englishTranslation: "Gorgeous", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "乏しい", vocabHiragana: "とぼしい", englishTranslation: "Scarce", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "容易い", vocabHiragana: "たやすい", englishTranslation: "Without much thought", noOfTimesSeen:0),
                      Vocab(vocabTitle: "疎かな", vocabHiragana: "おろそかな", englishTranslation: "Negligent/Careless", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "自ら", vocabHiragana: "みずから", englishTranslation: "One's own initiative", noOfTimesSeen: 0),]
    
    var n2LevelVocab = [ Vocab(vocabTitle: "儲かる", vocabHiragana: "もうかる", englishTranslation: "Make a profit", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "見習う", vocabHiragana: "みならう", englishTranslation: "Follow by example", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "早退する", vocabHiragana: "そうたい", englishTranslation: "Go home early", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "保留する", vocabHiragana: "ほりゅうする", englishTranslation: "Put someone on hold", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "出世する", vocabHiragana: "しゅっせする", englishTranslation: "Get promoted", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "穏やかな-おだやかな- mild", vocabHiragana: "おだやかな", englishTranslation: "Mild", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "強引な", vocabHiragana: "ごういんな", englishTranslation: "Forcefully", noOfTimesSeen: 0) ,
                      Vocab(vocabTitle: "卑怯な", vocabHiragana: "ひきょうな", englishTranslation: "Mean", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "粗末な", vocabHiragana: "そまつな", englishTranslation: "Plain", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "沢正しい", vocabHiragana: "さわただしいい", englishTranslation: "Busy", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "担ぐ", vocabHiragana: "かつぐ", englishTranslation: "Carry (on one's shoulder)", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "CHANGE FROM HERE", vocabHiragana: "すたれる", englishTranslation: "Go out of fashion", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "絡む", vocabHiragana: "からむ", englishTranslation: "To become entangled/stuck", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "軽快な", vocabHiragana: "けいかいな", englishTranslation: "Rhythmic", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "和やかな", vocabHiragana: "なごやかな", englishTranslation: "Calm,Gentle", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "煌びやかな", vocabHiragana: "きらびやかな", englishTranslation: "Gorgeous", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "乏しい", vocabHiragana: "とぼしい", englishTranslation: "Scarce", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "容易い", vocabHiragana: "たやすい", englishTranslation: "Without much thought", noOfTimesSeen:0),
                      Vocab(vocabTitle: "疎かな", vocabHiragana: "おろそかな", englishTranslation: "Negligent/Careless", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "自ら", vocabHiragana: "みずから", englishTranslation: "One's own initiative", noOfTimesSeen: 0),]
    
    var n3LevelVocab = [  Vocab(vocabTitle: "目次", vocabHiragana: "もくじ", englishTranslation: "Contents", noOfTimesSeen: 0),
                          Vocab(vocabTitle: "通過", vocabHiragana: "つうか", englishTranslation: "Pass/Transit", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "耐久性", vocabHiragana: "たいきゅうせい", englishTranslation: "Durability", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "促す", vocabHiragana: "うながす", englishTranslation: "To urge", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "一律", vocabHiragana: "いちりつ", englishTranslation: "Across the board", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "押し切り", vocabHiragana: "おしきり", englishTranslation: "Objection", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "打ち込む", vocabHiragana: "うちこむ", englishTranslation: "To input", noOfTimesSeen: 0) ,
                      Vocab(vocabTitle: "溶け込む", vocabHiragana: "とけこむ", englishTranslation: "To get used to", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "放り込む", vocabHiragana: "ほうりこむ", englishTranslation: "Throw into (something)", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "後継者", vocabHiragana: "こうけいしゃ", englishTranslation: "Successor", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "差しかける", vocabHiragana: "さしかける", englishTranslation: "To approach", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "廃れる", vocabHiragana: "すたれる", englishTranslation: "Go out of fashion", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "絡む", vocabHiragana: "からむ", englishTranslation: "To become entangled/stuck", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "軽快な", vocabHiragana: "けいかいな", englishTranslation: "Rhythmic", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "和やかな", vocabHiragana: "なごやかな", englishTranslation: "Calm,Gentle", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "煌びやかな", vocabHiragana: "きらびやかな", englishTranslation: "Gorgeous", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "乏しい", vocabHiragana: "とぼしい", englishTranslation: "Scarce", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "容易い", vocabHiragana: "たやすい", englishTranslation: "Without much thought", noOfTimesSeen:0),
                      Vocab(vocabTitle: "疎かな", vocabHiragana: "おろそかな", englishTranslation: "Negligent/Careless", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "自ら", vocabHiragana: "みずから", englishTranslation: "One's own initiative", noOfTimesSeen: 0),]

    
    var n4LevelVocab = [ Vocab(vocabTitle: "上達", vocabHiragana: "じょうたつ", englishTranslation: "Improvement", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "乗り越える", vocabHiragana: "のりこえる", englishTranslation: "To Push Through", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "耐久性", vocabHiragana: "たいきゅうせい", englishTranslation: "Durability", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "促す", vocabHiragana: "うながす", englishTranslation: "To urge", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "一律", vocabHiragana: "いちりつ", englishTranslation: "Across the board", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "押し切り", vocabHiragana: "おしきり", englishTranslation: "Objection", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "打ち込む", vocabHiragana: "うちこむ", englishTranslation: "To input", noOfTimesSeen: 0) ,
                      Vocab(vocabTitle: "溶け込む", vocabHiragana: "とけこむ", englishTranslation: "To get used to", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "放り込む", vocabHiragana: "ほうりこむ", englishTranslation: "Throw into (something)", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "後継者", vocabHiragana: "こうけいしゃ", englishTranslation: "Successor", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "差しかける", vocabHiragana: "さしかける", englishTranslation: "To approach", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "廃れる", vocabHiragana: "すたれる", englishTranslation: "Go out of fashion", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "絡む", vocabHiragana: "からむ", englishTranslation: "To become entangled/stuck", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "軽快な", vocabHiragana: "けいかいな", englishTranslation: "Rhythmic", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "和やかな", vocabHiragana: "なごやかな", englishTranslation: "Calm,Gentle", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "煌びやかな", vocabHiragana: "きらびやかな", englishTranslation: "Gorgeous", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "乏しい", vocabHiragana: "とぼしい", englishTranslation: "Scarce", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "容易い", vocabHiragana: "たやすい", englishTranslation: "Without much thought", noOfTimesSeen:0),
                      Vocab(vocabTitle: "疎かな", vocabHiragana: "おろそかな", englishTranslation: "Negligent/Careless", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "自ら", vocabHiragana: "みずから", englishTranslation: "One's own initiative", noOfTimesSeen: 0),]
    
    var n5LevelVocab = [ Vocab(vocabTitle: "上達", vocabHiragana: "じょうたつ", englishTranslation: "Improvement", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "乗り越える", vocabHiragana: "のりこえる", englishTranslation: "To Push Through", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "耐久性", vocabHiragana: "たいきゅうせい", englishTranslation: "Durability", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "促す", vocabHiragana: "うながす", englishTranslation: "To urge", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "一律", vocabHiragana: "いちりつ", englishTranslation: "Across the board", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "押し切り", vocabHiragana: "おしきり", englishTranslation: "Objection", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "打ち込む", vocabHiragana: "うちこむ", englishTranslation: "To input", noOfTimesSeen: 0) ,
                      Vocab(vocabTitle: "溶け込む", vocabHiragana: "とけこむ", englishTranslation: "To get used to", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "放り込む", vocabHiragana: "ほうりこむ", englishTranslation: "Throw into (something)", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "後継者", vocabHiragana: "こうけいしゃ", englishTranslation: "Successor", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "差しかける", vocabHiragana: "さしかける", englishTranslation: "To approach", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "廃れる", vocabHiragana: "すたれる", englishTranslation: "Go out of fashion", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "絡む", vocabHiragana: "からむ", englishTranslation: "To become entangled/stuck", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "軽快な", vocabHiragana: "けいかいな", englishTranslation: "Rhythmic", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "和やかな", vocabHiragana: "なごやかな", englishTranslation: "Calm,Gentle", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "煌びやかな", vocabHiragana: "きらびやかな", englishTranslation: "Gorgeous", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "乏しい", vocabHiragana: "とぼしい", englishTranslation: "Scarce", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "容易い", vocabHiragana: "たやすい", englishTranslation: "Without much thought", noOfTimesSeen:0),
                      Vocab(vocabTitle: "疎かな", vocabHiragana: "おろそかな", englishTranslation: "Negligent/Careless", noOfTimesSeen: 0),
                      Vocab(vocabTitle: "自ら", vocabHiragana: "みずから", englishTranslation: "One's own initiative", noOfTimesSeen: 0),]
    
    
    var pictureViewCount: Int = 0
    //Remember we want to have the answer only appear after the user has input 3 times. Maybe show it as a seperate AC?
  
    
    mutating func returnAllWordDataForN1() -> (vocab:String, hiragana:String, englishTranslation:String, viewCount: Int) {
        
        n1LevelVocab[vocabNumber].incrementNoOfTimesSeen()
        //has to be mutating because structs are immutable and this is a var in the vocabInfo.swift file.
        
        return (n1LevelVocab[vocabNumber].vocabTitle, n1LevelVocab[vocabNumber].vocabHiragana, n1LevelVocab[vocabNumber].englishTranslation, n1LevelVocab[vocabNumber].noOfTimesSeen)
    }
    
   mutating func returnAllWordDataForN2() -> (vocab:String, hiragana:String, englishTranslation:String, viewCount: Int)  {
        
        n2LevelVocab[vocabNumber].incrementNoOfTimesSeen()
        //has to be mutating because structs are immutable and this is a var in the vocabInfo.swift file.
        
        return (n2LevelVocab[vocabNumber].vocabTitle, n2LevelVocab[vocabNumber].vocabHiragana, n2LevelVocab[vocabNumber].englishTranslation, n2LevelVocab[vocabNumber].noOfTimesSeen)
    }
    
    mutating func returnAllWordDataForN3() -> (vocab:String, hiragana:String, englishTranslation:String, viewCount: Int)  {
        
        n3LevelVocab[vocabNumber].incrementNoOfTimesSeen()
        //has to be mutating because structs are immutable and this is a var in the vocabInfo.swift file.
        
        return (n3LevelVocab[vocabNumber].vocabTitle, n3LevelVocab[vocabNumber].vocabHiragana, n3LevelVocab[vocabNumber].englishTranslation, n3LevelVocab[vocabNumber].noOfTimesSeen)
    }
    
   mutating func returnAllWordDataForN4() -> (vocab:String, hiragana:String, englishTranslation:String, viewCount: Int)  {
        
        n4LevelVocab[vocabNumber].incrementNoOfTimesSeen()
        //has to be mutating because structs are immutable and this is a var in the vocabInfo.swift file.
        
        return (n4LevelVocab[vocabNumber].vocabTitle, n4LevelVocab[vocabNumber].vocabHiragana, n4LevelVocab[vocabNumber].englishTranslation, n4LevelVocab[vocabNumber].noOfTimesSeen)
    }
    
    mutating func returnAllWordDataForN5() -> (vocab:String, hiragana:String, englishTranslation:String, viewCount: Int)  {
        
        n5LevelVocab[vocabNumber].incrementNoOfTimesSeen()
        //has to be mutating because structs are immutable and this is a var in the vocabInfo.swift file.
        
        return (n5LevelVocab[vocabNumber].vocabTitle, n5LevelVocab[vocabNumber].vocabHiragana, n5LevelVocab[vocabNumber].englishTranslation, n5LevelVocab[vocabNumber].noOfTimesSeen)
    }
    //refactored all the funcs into one tuple...should follow the same rules but how to make sure each bit of info gets put into each respective box
    //REFACTOR SUCCESSFUL! this makes all the funcs into one and now can return them as one value and read the return values using 0,1,2,3 kind of like an array
    
    //Tuples can have their own internal param names here so it's more clear what is being returned by the function.
   
   
    
func nextVocab() {
      //let nextWord = vocabNumber
    
//    switch vocabNumber {//vocab is int so cases must be of type Int too.
//    case 1:
//        vocabNumber = (vocabNumber + Int.random(in: 0...19)) % n1LevelVocab.count
//    case 2:
//        vocabNumber = (vocabNumber + Int.random(in: 0...19)) % n2LevelVocab.count
//    case 3:
//        vocabNumber = (vocabNumber + Int.random(in: 0...19)) % n3LevelVocab.count
//    case 4:
//        vocabNumber = (vocabNumber + Int.random(in: 0...19)) % n4LevelVocab.count
//    case 5:
//        vocabNumber = (vocabNumber + Int.random(in: 0...19)) % n5LevelVocab.count
//    default:
//        break
//    } // this would just change the vocab view count to the one's corresponding to each level. Not what I wanted.
        NSLog("Before", "\(vocabNumber)")
        vocabNumber = (vocabNumber + Int.random(in: 0...19)) % n1LevelVocab.count //remember the modulo use here to allow it to calculate the random number being shown.
        //pictureViewCount += 1
        save()
        NSLog("After", "\(vocabNumber)")
    
}
    
    func save() {
        
        let defaults = UserDefaults.standard
        defaults.setValue(pictureViewCount, forKey: "pictureViewCount")

        if let savedViewCount = defaults.value(forKey: "pictureViewCount") as? Int {
            print("saved value: \(savedViewCount)")
        }

    }
    

    
    


}
