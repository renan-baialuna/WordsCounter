//
//  ViewController.swift
//  wordsCounter
//
//  Created by Renan Baialuna on 09/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var wordsEntrance: UITextField!
    
    var viewModel = ViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        wordsEntrance.text = "Esta é uma frase exemplo exemplo"
        
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func toResult() {
        
//        var total = viewModel.processString(phrase: wordsEntrance.text!)
        performSegue(withIdentifier: "toResults", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as? ResultViewController
        vc?.result = viewModel.processString(phrase: wordsEntrance.text!)
    }
}

