//
//  UICollectionView+LoadingCell.swift
//  Gardenize
//
//  Created by Mirko HTEC on 3/14/18.
//  Copyright © 2018 HTEC. All rights reserved.
//

import UIKit

extension UICollectionView {

    func registerClass<T: UICollectionViewCell>(_: T.Type) {
        register(T.self, forCellWithReuseIdentifier: T.reuseIdentifier)
    }

    func registerNib<T: UICollectionViewCell>(_: T.Type) {
        register(T.nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }

    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Dequeing a cell with identifier: \(T.reuseIdentifier) failed.")
        }
        return cell
    }
}
