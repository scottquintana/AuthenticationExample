//
//  UIView+Ext.swift
//  Authentication Example
//
//  Created by Scott Quintana on 2/1/21.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
