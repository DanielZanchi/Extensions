//
//  Screenshot.swift
//  Feed Daniel
//
//  Created by Daniel Zanchi on 16/04/2017.
//  Copyright © 2017 Daniel Zanchi. All rights reserved.
//

import UIKit

extension UIApplication {
    // returns a Screenshot of the current screen. 
    
    // usage:
    // let screenshot = UIApplication.shared.screenShot!
    // UIImageWriteToSavedPhotosAlbum(screenshot, nil, nil, nil)
    public var screenshot: UIImage?  {
        if let rootViewController = keyWindow?.rootViewController {
            let scale = UIScreen.main.scale
            let bounds = rootViewController.view.bounds
            UIGraphicsBeginImageContextWithOptions(bounds.size, false, scale);
            if let _ = UIGraphicsGetCurrentContext() {
                rootViewController.view.drawHierarchy(in: bounds, afterScreenUpdates: true)
                let screenshot = UIGraphicsGetImageFromCurrentImageContext()
                UIGraphicsEndImageContext()
                return screenshot
            }
        }
        return nil
    }
}
