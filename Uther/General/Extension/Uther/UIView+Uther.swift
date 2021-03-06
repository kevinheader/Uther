//
//  UIView+Uther.swift
//  Uther
//
//  Created by why on 8/1/15.
//  Copyright (c) 2015 callmewhy. All rights reserved.
//

import UIKit

extension UIView {
    func updateLocalizableString() {
        for v in self.subviews {
            if v.subviews.count > 0 {
                v.updateLocalizableString()
            }
            if v.isKind(of: UILabel.self) {
                let l = v as! UILabel
                l.text = l.text?.localized
                l.sizeToFit()
            }
            if v.isKind(of: UIButton.self) {
                let b = v as! UIButton
                b.setTitle(b.titleLabel?.text?.localized, for: UIControlState())
            }
            if v.isKind(of: UITextField.self) {
                let t = v as! UITextField
                t.placeholder = t.placeholder?.localized
            }
        }
    }
}
