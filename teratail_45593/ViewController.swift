//
//  ViewController.swift
//  teratail_45593
//
//  Created by KentarOu on 2016/08/25.
//  Copyright © 2016年 KentarOu. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    var isModalBackflg = false
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        if isModalBackflg {
            isModalBackflg = false
            modalBackMothod()
        }
    }
    
    func modalBackMothod() {
        print("Modal Back!")
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        // 遷移先がViewController2という設定
        if let _ = segue.destinationViewController as? ViewController2 {
            isModalBackflg = true
        }
    }
}


class ViewController2: UIViewController {
    
    @IBAction func modalCloseButton(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}


