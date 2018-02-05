//
//  ThirdViewController.swift
//  iKid
//
//  Created by Julia Zaratan on 2/4/18.
//  Copyright © 2018 Julia Zaratan. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var dadQuestion: UITextView!
    @IBOutlet weak var dadAnswer: UITextView!
    
    @IBAction func flip(_ sender: Any) {
        if dadAnswer.isHidden {
            UIView.transition(with: dadQuestion, duration: 1.0, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: {
                self.dadQuestion.isHidden = true
            })
            
            UIView.transition(with: dadAnswer, duration: 1.0, options: [.transitionFlipFromRight, .showHideTransitionViews], animations: {
                self.dadAnswer.isHidden = false
            })
        } else {
            UIView.transition(with: dadAnswer, duration: 1.0, options: [.transitionFlipFromLeft, .showHideTransitionViews], animations: {
            self.dadAnswer.isHidden = true
            })
    
            UIView.transition(with: dadQuestion, duration: 1.0, options: [.transitionFlipFromLeft, .showHideTransitionViews], animations: {
            self.dadQuestion.isHidden = false
            })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dadQuestion.isEditable = false
        dadAnswer.isEditable = false
        
        dadQuestion.isHidden = false
        dadAnswer.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
