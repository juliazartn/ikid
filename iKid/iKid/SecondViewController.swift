//
//  SecondViewController.swift
//  iKid
//
//  Created by Julia Zaratan on 2/4/18.
//  Copyright © 2018 Julia Zaratan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var punQuestion: UITextView!
    @IBOutlet weak var punAnswer: UITextView!
    
    @IBAction func flip(_ sender: Any) {
        if punAnswer.isHidden {
            UIView.transition(with: punQuestion, duration: 1.0, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: {
                self.punQuestion.isHidden = true
            })
            
            UIView.transition(with: punAnswer, duration: 1.0, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: {
                self.punAnswer.isHidden = false
            })
        } else {
            UIView.transition(with: punAnswer, duration: 1.0, options: [.transitionFlipFromLeft, .showHideTransitionViews], animations: {
                self.punAnswer.isHidden = true
            })
            
            UIView.transition(with: punQuestion, duration: 1.0, options: [.transitionFlipFromLeft, .showHideTransitionViews], animations: {
                self.punQuestion.isHidden = false
            })
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        punAnswer.isEditable = false
        punQuestion.isEditable = false
        
        punAnswer.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

