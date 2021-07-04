//
//  UIViewExtension.swift
//  constraint
//
//  Created by Thiem Jason on 7/4/21.
//

import Foundation
import UIKit

extension UIView {
    // MARK: - Remote MessageBubble
    func remoteBubbleSingle(with cornerRadius : CGFloat){
        self.layer.cornerRadius = self.frame.size.height / 4
        self.clipsToBounds = true
    }
    
    func remoteBubbleTop(with cornerRadius : CGFloat){
        self.layer.cornerRadius = self.frame.size.height / 4
        self.layer.masksToBounds = true
        self.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMaxXMinYCorner]
    }
}
