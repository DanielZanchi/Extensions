//
//  Bundle+AppVersion.swift
//  Extensions
//
//  Created by Daniel Zanchi on 24/10/2017.
//

import Foundation


extension Bundle {
    public var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    public var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
    
    public var versionAndBuild: String? {
        let ver: String = (infoDictionary?["CFBundleShortVersionString"] as? String)!
        let build: String = (infoDictionary?["CFBundleVersion"] as? String)!
        let str = ver + "(" + build + ")"
        return str
    }
}
