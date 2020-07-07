//
//  Reusable.swift
//  Jammcard
//
//  Created by Mirko HTEC on 1/3/18.
//  Copyright © 2018 HTEC. All rights reserved.
//

import UIKit

public protocol Reusable {
    public static var reuseIdentifier: String { get }
}

extension Reusable where Self: UIView {
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
}
