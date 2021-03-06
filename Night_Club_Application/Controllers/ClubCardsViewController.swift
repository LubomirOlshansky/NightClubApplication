//
//  ClubCardsViewController.swift
//  Night_Club_Application
//
//  Created by Lubomir Olshansky on 04/07/2018.
//  Copyright © 2018 Lubomir Olshansky. All rights reserved.
//

import UIKit

class ClubCardsViewController: UIViewController {

    //MARK: Outlets
    @IBOutlet weak var vipCardView: UIView!
    @IBOutlet weak var ladiesCardView: UIView!
    
    //MARK: UIViewController Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vipCardView.alpha = 1
        ladiesCardView.alpha = 0

    }
    
    //MARK: Methods
    @IBAction func segmentControlValueChanged(_ sender: CustomSegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            let ladiesCardSelectedAnimation = UIViewPropertyAnimator(duration: 0.3, curve: .linear, animations: {
               self.vipCardView.alpha = 1
               self.ladiesCardView.alpha = 0
            })
            ladiesCardSelectedAnimation.startAnimation()
            break
        case 1:
            let ladiesCardSelectedAnimation = UIViewPropertyAnimator(duration: 0.3, curve: .linear, animations: {
                self.vipCardView.alpha = 0
                self.ladiesCardView.alpha = 1
            })
            ladiesCardSelectedAnimation.startAnimation()
            break
        default:
            break
        }
    }
}
