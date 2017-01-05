//
//  PopUpview.swift
//  SwiftXibUIview
//
//  Created by Quy on 1/5/17.
//  Copyright © 2017 Quy. All rights reserved.
//

import UIKit

class PopUpView: UIView {

    @IBOutlet var view: UIView!
    
    @IBOutlet weak var closeButton: UIButton!
    override init(frame : CGRect){
        super.init(frame: frame)
        loadViewFromNib()
    }
       required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
       loadViewFromNib()
    }
    public func  showAlert(){
        
       UIApplication.shared.keyWindow?.addSubview(self)
     
      UIApplication.shared.keyWindow?.bringSubview(toFront: self)
    }
  
    private func loadViewFromNib() {
//        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
        self.backgroundColor = UIColor(white: 0, alpha: 0.4)

        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "PopUpView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(view);
        
        
        
    }
}
