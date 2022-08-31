//
//  AlertViewController.swift
//  AlertControllerMirko
//
//  Created by Mirko Weitkowitz on 31.08.22.
//

import UIKit

class AlertViewController: UIViewController {

    @IBOutlet weak var inputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    @IBAction func addBTN(_ sender: UIButton) {
        
        
        let addAction = UIAlertController(title: "Sprache hinzufügen", message: "Welche Programmiersprache soll hinzugefügt werden?", preferredStyle: .alert)
        addAction.addTextField()
        
        //                 button 2
        let submitAction2 = UIAlertAction(title: "Abbrechen", style: .cancel)
        addAction.addAction(submitAction2)
        
        
        //         button 1
        let submitAction = UIAlertAction(title: "Hinzufügen", style: .default) { [self, unowned addAction] _ in
            let answer = addAction.textFields![0]
            
            // do something interesting with "answer" here
          
            if  answer.text! != ""{
                inputLabel.text! +=  "\n\(answer.text!)"
            }
            
        }
        
        addAction.addAction(submitAction)
        
        self.present(addAction, animated: true)
    }
    
    
    @IBAction func trashBTN(_ sender: UIButton) {
        
        //        1.
        let actionTrash = UIAlertController(title: "Löschen",message: "Möchtest du wirklich alle Einträge Löschen?",
                                      preferredStyle: .alert)

        //        2.
        let action1 = UIAlertAction(title: "Abbrechen", style: .cancel)
        actionTrash.addAction(action1)

        let action2 = UIAlertAction(title: "Ja", style: .destructive){ [self] _ in
            self.inputLabel.text = ""
            
        }

        actionTrash.addAction(action2)

        //        3.

        present(actionTrash, animated: true)
    }
    }

   
