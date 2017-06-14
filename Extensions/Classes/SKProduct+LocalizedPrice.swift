//
//  SKProduct+LocalizedPrice.swift
//  Pods
//
//  Created by Daniel Zanchi on 12/06/2017.
//
//

import StoreKit

extension SKProduct {
    
    // returns the price of a SKProduct ex: "€1.09"
    public func localizedPrice() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = self.priceLocale
        return formatter.string(from: self.price)!
    }
}

