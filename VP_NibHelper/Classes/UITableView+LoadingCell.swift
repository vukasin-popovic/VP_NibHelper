//
//  UITableView+LoadingCell.swift
//  Jammcard
//
//  Created by Mirko HTEC on 1/3/18.
//  Copyright © 2018 HTEC. All rights reserved.
//

import UIKit

extension UITableView {

    func registerClass<T: UITableViewCell>(_: T.Type) {
        register(T.self, forCellReuseIdentifier: T.reuseIdentifier)
    }
    
    func registerNib<T: UITableViewCell>(_: T.Type) {
        register(T.nib, forCellReuseIdentifier: T.reuseIdentifier)
    }

     func dequeueReusableCell<T: UITableViewCell>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Dequeing a cell with identifier: \(T.reuseIdentifier) failed.")
        }
        return cell
    }
}
