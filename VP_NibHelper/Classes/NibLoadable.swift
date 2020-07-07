//
//  NibLoadable.swift
//  Jammcard
//
//  Created by Mirko HTEC on 1/3/18.
//  Copyright © 2018 HTEC. All rights reserved.
//

import UIKit

public protocol NibLoadable {
    static var nibName: String { get }
    static var nib: UINib { get }
}

extension NibLoadable where Self: UIView {
    public static var nibName: String {
        return String(describing: self)
    }
    
    public static var nib: UINib {
        return UINib(nibName: nibName, bundle: Bundle(for: self))
    }
}
