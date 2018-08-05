//
//  CheckBox.swift
//  checkbox
//
//  Created by kent on 9/27/14.
//  Copyright (c) 2014 kent. All rights reserved.
//
//Version 2.0 new features
//Added IBInspectable property so the checkbox can be turned on and off in interface builder.

import UIKit

class CheckBox: UIButton {
    
    //images
    let checkedImage = UIImage(named: "checked_checkbox")
    let unCheckedImage = UIImage(named: "unchecked_checkbox")
    
    //bool propety
    @IBInspectable var isChecked:Bool = false{
        didSet{
            self.updateImage()
        }
    }

    
    override func awakeFromNib() {
        self.addTarget(self, action: #selector(CheckBox.buttonClicked), for: UIControlEvents.touchUpInside)
        self.updateImage()
    }
    
    
    func updateImage() {
        if isChecked == true{
            self.setImage(checkedImage, for: [])
        }else{
            self.setImage(unCheckedImage, for: [])
        }

    }

    @objc func buttonClicked(sender:UIButton) {
        if(sender == self){
            isChecked = !isChecked
        }
    }

}
