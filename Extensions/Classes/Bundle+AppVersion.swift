//
//  Bundle+AppVersion.swift
//  Extensions
//
//  Created by Daniel Zanchi on 24/10/2017.
//

import Foundation


extension Bundle {
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
    
    var versionAndBuild: String? {
        let ver: String = (infoDictionary?["CFBundleShortVersionString"] as? String)!
        let build: String = (infoDictionary?["CFBundleVersion"] as? String)!
        let str = ver + "(" + build + ")"
        return str
    }
}
