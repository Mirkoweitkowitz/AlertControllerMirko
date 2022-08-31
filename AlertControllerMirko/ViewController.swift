//
//  ViewController.swift
//  AlertControllerMirko
//
//  Created by Mirko Weitkowitz on 31.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert(_ sender: UIButton) {
        
        //        TODO: 1. AlertController Instanz erzeugen
        let alert = UIAlertController(title: "Hallo SyntaxTeam", message: "Schön euch hier zu sehen", preferredStyle: .alert)
        //        TODO 2. Action ergänzen
        //        alert.addAction(UIAlertAction(title:"Beispielbutton",
        //                                      style: .default,handler: {
        //            (_) in
        //            alert.dismiss(animated: true)
        //        }))
        //        alert.addTextField { (textField) in
        //            textField.placeholder = "Default placeholder text"
     
        
        let action2 = UIAlertAction(title:"Schließen",style: .cancel)
        alert.addAction(action2)
        
        //        TODO: 3. Dialog mit present anzeigen
        present(alert, animated: true)
    }
    
    @IBAction func textfieldAction(_ sender: UIButton) {
   
        
        //        1.
        let alert = UIAlertController(title: "Ein ActionSheet Beispiel",message: "Hier seht ihr den Unterschied.",
                                      preferredStyle: .alert)
        
        
        
        //        2.
        let action1 = UIAlertAction(title: "Schließen", style: .cancel)
        alert.addAction(action1)
        
        let action2 = UIAlertAction(title: "Anzeigen", style: .default){ [self] _ in
            self.label.text = "Hallo"
            self.label.isHidden = false
            
            
        }
        
        alert.addAction(action2)
        
        
        
        //        3.
        
        present(alert, animated: true)
    }
    

    
    @IBAction func ac(_ sender: UIButton) {
        
        
        let ac = UIAlertController(title: "Label beschreiben", message: nil, preferredStyle: .alert)
        ac.addTextField()
        
        //                 button 2
        let submitAction2 = UIAlertAction(title: "Schließen", style: .cancel)
        ac.addAction(submitAction2)
        
        
        //         button 1
        let submitAction = UIAlertAction(title: "Anzeigen", style: .default) { [self, unowned ac] _ in
            let answer = ac.textFields![0]
            
            // do something interesting with "answer" here
            self.label2.text = answer.text
            self.label2.isHidden = false
            
            
        }
        
        ac.addAction(submitAction)
        
        self.present(ac, animated: true)
    }
    
    @IBAction func actionSheet(_ sender: UIButton) {
        
//        1. UiAlertController
        let alle = UIAlertController(title:"ActionSheet",message:"Kannst du es sehen?", preferredStyle: .actionSheet)
        
//         2. UIAlertAction
        
        let acone = UIAlertAction(title: "Weiter", style: .default)
        let actwo = UIAlertAction(title: "Daten wirklich löschen?", style: .destructive)
        let acthree = UIAlertAction(title: "nicht Wirklich", style: .cancel)
        
        alle.addAction(acone)
        alle.addAction(actwo)
        alle.addAction(acthree)
        
//        3. Present
        present(alle, animated: true)
    }
}

//            ac.addTextField { (textField) in
//                  textField.placeholder = "Default placeholder text"
//              }
//    override func viewDidAppear(_ animated: Bool) {
//        let alert = UIAlertController(title: "Alert Title", message: "Alert Message", preferredStyle: .alert)
//        self.present(alert, animated: true, completion: nil)
//    }
//    alert.addTextField { (textField) in
//        textField.placeholder = "Default placeholder text"
//    }



