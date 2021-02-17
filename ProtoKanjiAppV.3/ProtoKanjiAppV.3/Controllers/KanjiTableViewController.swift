//
//  KanjiTableViewController.swift
//  ProtoKanjiAppV.3
//
//  Created by Mohammed Qureshi on 2021/02/02.
//

import UIKit

class TableViewController: UITableViewController {
        
        //1. create array to populate tableViewCell
        let nLevelArray = ["N1","N2","N3","N4","N5"]

    
    var vocabData = VocabBuilder()
//    var n1levelSelected = VocabBuilder().n1LevelVocab
//    var n2levelSelected = VocabBuilder().n2LevelVocab
    
    var levelSelected = [VocabBuilder().n1LevelVocab, VocabBuilder().n2LevelVocab,VocabBuilder().n3LevelVocab, VocabBuilder().n4LevelVocab, VocabBuilder().n5LevelVocab]

    //var passData = []
    
    //var returnData = VocabBuilder.returnAllWordData
    var dataArray = [Vocab]()
    
        override func viewDidLoad() {
            super.viewDidLoad()
    //        title = "何回も"
    //        navigationController?.navigationBar.prefersLargeTitles = true
    //        navigationItem.largeTitleDisplayMode = .never
            // Uncomment the following line to preserve selection between presentations
            // self.clearsSelectionOnViewWillAppear = false
            // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
            // self.navigationItem.rightBarButtonItem = self.editButtonItem
            
            //var allData: Array = [vocabData.returnAllWordDataForN1(),vocabData.returnAllWordDataForN2(),vocabData.returnAllWordDataForN3(),vocabData.returnAllWordDataForN4(),vocabData.returnAllWordDataForN5()]
            //dataArray = [Vocab.init(vocabTitle: "Test", vocabHiragana: "Test", englishTranslation: "Test", noOfTimesSeen: 0)]
            //loadView()
        }

        // MARK: - Table view data source

    //    override func numberOfSections(in tableView: UITableView) -> Int {
    //        // #warning Incomplete implementation, return the number of sections
    //
    //        return 0
    //    }

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // #warning Incomplete implementation, return the number of rows
            
            return nLevelArray.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            
            cell.textLabel!.text = "\(nLevelArray[indexPath.row])"
            

            return cell
        }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ViewController {
        //            _ = destination.vocabBox?.text = vocabData.returnAllWordDataForN1().0
           // destination.loadData = vocabData.nextVocabr
            //destination.vocabBox?.text = vocabData.returnAllWordDataForN1().0
            //destination.vocabBox?.text = nLevelArray[vocabData.returnAllWordDataForN1().0.indexPath]
            //destination.vocabDataNew = nLevelArray[(self.indexPathForSelectedRow?.row)]
        }
    }

    }



