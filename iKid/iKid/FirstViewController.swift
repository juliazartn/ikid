//
//  FirstViewController.swift
//  iKid
//
//  Created by Julia Zaratan on 2/4/18.
//  Copyright © 2018 Julia Zaratan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var goodAnswer: UITextView!
    @IBOutlet weak var goodQuestion: UITextView!
    
    @IBAction func flip(_ sender: Any) {
        if goodAnswer.isHidden {
            UIView.transition(with: goodQuestion, duration: 1.0, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: {
                self.goodQuestion.isHidden = true
            })
            
            UIView.transition(with: goodAnswer, duration: 1.0, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: {
                self.goodAnswer.isHidden = false
            })
        } else {
            UIView.transition(with: goodAnswer, duration: 1.0, options: [.transitionFlipFromLeft, .showHideTransitionViews], animations: {
                self.goodAnswer.isHidden = true
            })
            
            UIView.transition(with: goodQuestion, duration: 1.0, options: [.transitionFlipFromLeft, .showHideTransitionViews], animations: {
                self.goodQuestion.isHidden = false
            })
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        goodAnswer.isEditable = false
        goodQuestion.isEditable = false
        
        goodAnswer.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

