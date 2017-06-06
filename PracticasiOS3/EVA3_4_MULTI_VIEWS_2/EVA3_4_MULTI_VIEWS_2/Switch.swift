//
//  Switch.swift
//  EVA3_4_MULTI_VIEWS_2
//
//  Created by BRANDON on 04/05/17.
//  Copyright © 2017 BRANDON. All rights reserved.
//

import UIKit

class Switch: UIViewController {
    
    private var blue: Blue!
    private var yellow: Yellow!
    
    @IBAction func switchViews(_ sender: AnyObject) {
        if yellow == nil {
            yellow = storyboard?.instantiateViewController(withIdentifier: "Yellow") as! Yellow
        } else if blue?.view.superview == nil {
            if blue == nil {
                blue = storyboard?.instantiateViewController(withIdentifier: "Blue") as! Blue
            }
        }
        
        UIView.beginAnimations("View Flip", context: nil)
        UIView.setAnimationDuration(0.4)
        UIView.setAnimationCurve(.easeInOut)
        // Switch view controllers
        if blue != nil && blue!.view.superview != nil { UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            yellow.view.frame = view.frame
            switchViewController(from: blue, to: yellow)
        } else {
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            blue.view.frame = view.frame
            switchViewController(from: yellow, to: blue)
        }
        UIView.commitAnimations()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        blue = storyboard?.instantiateViewController(withIdentifier: "Blue") as! Blue
        blue.view.frame = view.frame
        switchViewController(from: nil, to: blue)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        if blue != nil && blue!.view.superview == nil {
            blue = nil
        }
        if yellow != nil && yellow!.view.superview == nil { yellow = nil
        }
    }
    
   
    
    private func switchViewController(from fromVC:UIViewController?, to toVC:UIViewController?) {
        if fromVC != nil {
            fromVC!.willMove(toParentViewController: nil)
            fromVC!.view.removeFromSuperview()
            fromVC!.removeFromParentViewController()
        }
        if toVC != nil {
            self.addChildViewController(toVC!)
            self.view.insertSubview(toVC!.view, at: 0)
            toVC!.didMove(toParentViewController: self)
        }
    }
}


    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


