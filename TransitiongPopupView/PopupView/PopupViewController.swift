//
//  PopupViewController.swift
//  TransitiongPopupView
//
//  Created by ben on 26/10/2017.
//  Copyright © 2017 ben. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController, UIViewControllerTransitioningDelegate {
    @IBOutlet var containerView: UIView!
    
    @IBOutlet weak var popupView: UIView!
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popupView.setRadiusWithShadow(15)
        closeButton.setRadiusWithShadow(15)
        
        // Do any additional setup after loading the view.
    }

    @IBAction func closeView(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
