//
//  ViewController.swift
//  TransitiongPopupView
//
//  Created by ben on 26/10/2017.
//  Copyright © 2017 ben. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let transition = PopAnimator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OpenPopupView(_ sender: Any) {
        let popupStoryboard: UIStoryboard = UIStoryboard(name: "PopupVC", bundle: nil)
        let popupVC = popupStoryboard.instantiateViewController(withIdentifier: "PopupVCID") as! PopupViewController
        popupVC.transitioningDelegate = self
        popupVC.transitioningDelegate = self
        present(popupVC, animated: true)
    }
    
}

extension ViewController: UIViewControllerTransitioningDelegate {
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        transition.presenting = true
        return transition
    }
}


