//
//  NibReusable.swift
//  Jammcard
//
//  Created by Mirko HTEC on 1/3/18.
//  Copyright © 2018 HTEC. All rights reserved.
//

import UIKit

public protocol NibReusable: Reusable, NibLoadable {
}

extension UITableViewCell: NibReusable {
}

extension UICollectionViewCell: NibReusable {
}
