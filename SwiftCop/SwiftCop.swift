//
//  SwiftCop.swift
//  SwiftCop
//
//  Created by Andres on 10/16/15.
//  Copyright © 2015 Andres Canal. All rights reserved.
//

import Foundation
import UIKit

public class SwiftCop {
    var suspects = Array<Suspect>()
    
    public init(){}
    
    public func addSuspect(suspect: Suspect) {
        if suspect.view.isSupportSuspectable {
            suspects.append(suspect)
        }
    }
    
    public func anyGuilty() -> Bool {
        return suspects.filter{
            return $0.isGuilty()
            }.count != 0
    }
    
    public func allGuilties() -> Array<Suspect> {
        return suspects.filter{
            return $0.isGuilty()
        }
    }
    
    public func isGuilty(view: UIView) -> Suspect? {
        for suspect in suspects where suspect.view == view {
            if suspect.isGuilty() {
                return suspect
            }
        }
        return nil
    }	
}
