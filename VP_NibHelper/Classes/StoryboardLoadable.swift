//
//  StoryboardLoadable.swift
//  Hii
//
//  Created by Vukasin on 8/28/18.
//  Copyright © 2018 swiftylabs. All rights reserved.
//

import UIKit

public protocol StoryboardLoadable {
    public static var storyboardName: String { get }
    public static var storyboardIdentifier: String { get }
}


extension StoryboardLoadable where Self: UIViewController {
    
    public static var storyboardName: String {
        return String(describing: self)
    }
    
    public static var storyboardIdentifier: String {
        return String(describing: self)
    }
    
    public static func instantiate(fromStoryboardNamed name: String? = nil) -> Self {
        let sb = name ?? storyboardName
        let storyboard = UIStoryboard(name: sb, bundle: nil)
        return instantiate(fromStoryboard: storyboard)
    }
    
    public static func instantiate(fromStoryboard storyboard: UIStoryboard) -> Self {
        let identifier = storyboardIdentifier
        guard let vc = storyboard.instantiateViewController(withIdentifier: identifier) as? Self else {
            fatalError("Failed to instantiate view controller with identifier=\(identifier) from storyboard \( storyboard )")
        }
        return vc
    }
    
    public static func initial(fromStoryboardNamed name: String? = nil) -> Self {
        let sb = name ?? storyboardName
        let storyboard = UIStoryboard(name: sb, bundle: nil)
        return initial(fromStoryboard: storyboard)
    }
    
    public static func initial(fromStoryboard storyboard: UIStoryboard) -> Self {
        guard let vc = storyboard.instantiateInitialViewController() as? Self else {
            fatalError("Failed to instantiate initial view controller from storyboard named \( storyboard )")
        }
        return vc
    }
}

extension UIViewController: StoryboardLoadable {
    public static var storyboardName: String {
        return "Main"
    }
}
