//
//  AlarmCounterViewController.swift
//  AlertControllerMirko
//
//  Created by Mirko Weitkowitz on 31.08.22.
//

import UIKit

class AlarmCounterViewController: UIViewController {
    
    @IBOutlet weak var alarmLabel: UILabel!
    
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

     
       
    }
    

    @IBAction func startBTN(_ sender: UIButton) {
        
        func startTimer(secondsString:String?) {
            if let secondsString = secondsString,
               let secondsInt = Int(secondsString) {
                var seconds = secondsInt
                
                Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) {
                    (Timer) in
                    if seconds > 0 {
                        seconds -= 1
                    } else {
                        Timer.invalidate()
                    }
                }
                
            }
            self.alarmLabel.text = counterLabel.text
                                
        }
      
       
    }
    
}
