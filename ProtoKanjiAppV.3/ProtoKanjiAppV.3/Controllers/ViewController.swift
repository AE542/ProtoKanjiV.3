//
//  ViewController.swift
//  ProtoKanjiAppV.3
//
//  Created by Mohammed Qureshi on 2021/02/02.
//
//



import UIKit
import Foundation
//fixed no initialiser problem when importing code from ProtoKanjiApp.

class ViewController: UIViewController {

    @IBOutlet weak var vocabBox: UILabel!
//not key coding compliant error and kept crashing. Solved by deleting IBOutlet and recreating it
    @IBOutlet weak var englishTranslationBox: UILabel!
    
    @IBOutlet weak var hiraganaBox: UILabel!

    @IBOutlet weak var correctOrIncorrectBox: UILabel!
    
    @IBOutlet weak var viewCount: UILabel!

//need outlets for buttons here
    
    var answerAttemptCount = 0
    
    var pictureViewCount: Int = 0
    
    var vocabInfo = VocabBuilder()

    var vocabDataNew = [VocabBuilder]()
    
   // var loadData = loadUI(.init())
    
        override func viewDidLoad() {
        super.viewDidLoad()
            //view.isUserInteractionEnabled = false
            
            title = "何回も"
//        need to change the title text colour to white and als needs to show the selected tableview cell as its title
            
            
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .never
            
            //navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Change Level", style: .plain, target: self, action: #selector(loadLevels))
        
            if let vocabView = vocabBox {
        vocabView.layer.borderColor = UIColor(white: 1.0, alpha: 1.0).cgColor
        //cannot assign value of tupe UIColor to type CGColor need to add .cgcolor to convert here
                vocabView.layer.borderWidth = 2.0
        //better to set the constraints of Next Word to be less than or equal to so it doesn't shrink into ellipses. Remember to set all the constraints as necessary
                vocabView.layer.cornerRadius = 10.0
                vocabView.textAlignment = .center
            }
            if let englishTranslationView = englishTranslationBox {
                englishTranslationView.layer.borderColor = UIColor(white: 1.0, alpha: 1.0).cgColor
        //cannot assign value of tupe UIColor to type CGColor need to add .cgcolor to convert here
                englishTranslationView.layer.borderWidth = 1.5
                englishTranslationView.layer.cornerRadius = 10.0
                englishTranslationView.textAlignment = .center
            }
            
            let hiraganaView = hiraganaBox
                hiraganaView?.layer.borderColor = UIColor(white: 1.0, alpha: 1.0).cgColor
                hiraganaView?.layer.borderWidth = 2.5
                hiraganaView?.layer.cornerRadius = 10.0
                hiraganaView?.textColor = .systemBackground
                hiraganaView?.textAlignment = .center
            
            if let resultBox = correctOrIncorrectBox {
                resultBox.layer.borderColor = UIColor(white: 1.0, alpha: 1.0).cgColor
                resultBox.layer.borderWidth = 2.5
                resultBox.layer.cornerRadius = 10.0
                resultBox.textAlignment = .center

            }
        
            if let viewCountBox = viewCount {
                viewCountBox.layer.borderColor = UIColor(white: 1.0, alpha: 1.0).cgColor
                viewCountBox.layer.borderWidth = 2.5
                viewCountBox.layer.cornerRadius = 10.0
                viewCountBox.textAlignment = .center
            }
//
          loadUI()
         
    }

    
    
    func submit(answer: String) {
    if answerAttemptCount < 3 {
    if hiraganaBox.text == answer {
      
        let ac = UIAlertController(title: "Correct!", message: "Go to the next word!", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
         present(ac, animated: true)
        hiraganaBox.textColor = .systemBackground
        correctOrIncorrectBox.text = "Correct!"
        correctOrIncorrectBox.textColor = .green

    } else if hiraganaBox.text != answer {
        let ac = UIAlertController(title: "Incorrect!", message: "Give it another go.", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
         present(ac, animated: true)
        correctOrIncorrectBox.text = "Incorrect"
        correctOrIncorrectBox.textColor = .red
        answerAttemptCount += 1
        print(answerAttemptCount)
        //print("Incorrect")
    }


} else if hiraganaBox.text != answer || answerAttemptCount == 4 {
    let ac = UIAlertController(title: "Show Answer?", message: nil, preferredStyle: .alert)
    ac.addAction(UIAlertAction(title: "OK", style: .default, handler: showHiragana(_:)))
    ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
    present(ac, animated: true)
    answerAttemptCount = 0
}
    
}
    
    func showHiragana(_ sender: UIAlertAction) {
        //hiraganaBox.isHidden = true
        hiraganaBox.textColor = .white
    }
    

    
    
    func loadUI() {

        vocabBox?.text = vocabInfo.returnAllWordDataForN1().0
           //vocabBox.fadeTransition(0.2) //need to add extension for transitions
        
        hiraganaBox?.text = vocabInfo.returnAllWordDataForN1().1
        hiraganaBox?.textColor = view.backgroundColor
        //view's background colour not the system background colour
        //perhaps setting a placeholder here is better.
        
        
        englishTranslationBox?.text = vocabInfo.returnAllWordDataForN1().2
        
        viewCount?.text = ("View Count: \(vocabInfo.returnAllWordDataForN1().3)")
        //not great for readability so will need to add comments to final section showing what is being returned here.

    
            correctOrIncorrectBox?.text = "Try and Remember!"
        
            correctOrIncorrectBox?.textColor = .white


        }
    func loadUIN2() {

        vocabBox?.text = vocabInfo.returnAllWordDataForN2().0
        
        hiraganaBox?.text = vocabInfo.returnAllWordDataForN2().1
        hiraganaBox?.textColor = view.backgroundColor
        
        englishTranslationBox?.text = vocabInfo.returnAllWordDataForN2().2
        
        viewCount?.text = ("View Count: \(vocabInfo.returnAllWordDataForN2().3)")
    
            correctOrIncorrectBox?.text = "Try and Remember!"
        
            correctOrIncorrectBox?.textColor = .white
        }
    func loadUIN3() {

        vocabBox?.text = vocabInfo.returnAllWordDataForN3().0
           
        
        hiraganaBox?.text = vocabInfo.returnAllWordDataForN3().1
        hiraganaBox?.textColor = view.backgroundColor
        
        englishTranslationBox?.text = vocabInfo.returnAllWordDataForN3().2
        
        viewCount?.text = ("View Count: \(vocabInfo.returnAllWordDataForN3().3)")

    
            correctOrIncorrectBox?.text = "Try and Remember!"
        
            correctOrIncorrectBox?.textColor = .white


        }
    func loadUIN4() {

        vocabBox?.text = vocabInfo.returnAllWordDataForN4().0
        
        hiraganaBox?.text = vocabInfo.returnAllWordDataForN4().1
        hiraganaBox?.textColor = view.backgroundColor
        
        
        englishTranslationBox?.text = vocabInfo.returnAllWordDataForN4().2
        
        viewCount?.text = ("View Count: \(vocabInfo.returnAllWordDataForN4().3)")

            correctOrIncorrectBox?.text = "Try and Remember!"
        
            correctOrIncorrectBox?.textColor = .white
        }
    
    func loadUIN5() {

        vocabBox?.text = vocabInfo.returnAllWordDataForN5().0
        
        hiraganaBox?.text = vocabInfo.returnAllWordDataForN5().1
        hiraganaBox?.textColor = view.backgroundColor
        
        
        englishTranslationBox?.text = vocabInfo.returnAllWordDataForN5().2
        
        viewCount?.text = ("View Count: \(vocabInfo.returnAllWordDataForN5().3)")

            correctOrIncorrectBox?.text = "Try and Remember!"
        
            correctOrIncorrectBox?.textColor = .white
        }
    
    @IBAction func moveToNextWord(_ sender: UIButton) {
        print("Tapped")
        vocabInfo.nextVocab()
        loadUI()

    }
    

    

    @IBAction func enterHiraganaButton(_ sender: UIButton) {
        let ac = UIAlertController(title: "What is this word in Hiragana?", message: "Enter your answer into the box below", preferredStyle: .alert)
        ac.addTextField()
        let submitAction = UIAlertAction(title: "Submit", style: .default){
            [weak ac] action in// make a closure to handle text field.
            guard let answer = ac?.textFields?[0].text else { return }
            //self?.submit(answer)// create submit func below to allow entry into the text field as a string.

            self.submit(answer: answer)//Cannot use optional chaining on non-optional value of type 'ViewController' error
            //OK! changing it to self.submit (answer: answer) made it correct!!!
            // attempt to get inputs to match text
            //self.answerAttemptCount += 1

        }
        ac.addAction(submitAction)
        ac.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        present(ac, animated: true)
        //print("")
    }
    
    
}

