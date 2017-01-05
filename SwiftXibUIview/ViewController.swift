//
//  ViewController.swift
//  SwiftXibUIview
//
//  Created by Quy on 1/5/17.
//  Copyright © 2017 Quy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let alert = PopUpView(frame: self.view.frame)
        
        
        alert.showAlert(_aView: self.view)
        
      //  let newAlert = P
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

