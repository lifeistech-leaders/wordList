//
//  ViewController.swift
//  WordList
//
//  Created by 大澤清乃 on 2024/05/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func back(sender: UIStoryboardSegue) {

    }
    
    @IBAction func startButtonTapped() {
        let saveData = UserDefaults.standard
        if saveData.array(forKey: "WORD") != nil {
            if saveData.array(forKey: "WORD")!.count > 0 {
                performSegue(withIdentifier: "toQuetionView", sender: nil)
            }
        } else {
            let alert = UIAlertController(
                title: "単語",
                message: "まずは、「単語一覧」をタップして単語登録をしてください",
                preferredStyle: .alert
            )
            alert.addAction(UIAlertAction(
                title: "OK",
                style: .default,
                handler: nil
            ))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
//    @IBAction func listButtonTapped() {
//        performSegue(withIdentifier: "toListView", sender: nil)
//    }
}

