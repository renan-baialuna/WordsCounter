//
//  ResultViewController.swift
//  wordsCounter
//
//  Created by Renan Baialuna on 09/08/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    var result: [WordsClass] = []
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ResultViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return result.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = (tableView.dequeueReusableCell(withIdentifier: "cell") as? TableViewCell)!
        cell.wordLabel.text = result[indexPath.row].word
        cell.countLabel.text = "\(result[indexPath.row].number)"
        return cell
    }
    
    
}
