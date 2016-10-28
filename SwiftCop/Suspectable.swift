//
//  Suspectable.swift
//  SwiftCop
//
//  Created by Hiroaki Muronaka on 2016/10/28.
//  Copyright © 2016年 Andres Canal. All rights reserved.
//

import UIKit

public protocol Suspectable:Equatable {
    var suspectText:String { get }
    var isSupportSuspectable:Bool { get }
}

extension UITextField: Suspectable {
    public override var suspectText:String {
        return text!
    }
    
    public override var isSupportSuspectable:Bool {
        return true
    }
}

extension UITextView: Suspectable {
    public override var suspectText:String {
        return text
    }
    
    public override var isSupportSuspectable:Bool {
        return true
    }
}

extension UIView: Suspectable {
    
    public var suspectText:String {
        return ""
    }
    
    public var isSupportSuspectable:Bool {
        return false
    }
    
}
