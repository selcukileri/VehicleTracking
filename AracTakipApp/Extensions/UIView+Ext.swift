//
//  UIView+Ext.swift
//  AracTakipApp
//
//  Created by Selçuk İleri on 28.05.2024.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...){
        for view in views { addSubview(view) }
    }
}
