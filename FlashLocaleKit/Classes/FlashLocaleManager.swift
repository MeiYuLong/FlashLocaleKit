//
//  FlashLocaleManager.swift
//  FlashLocaleManager
//
//  Created by 宋东昊 on 2021/2/19.
//

import Foundation
import UIKit
public class FlashLocaleManager {
    
    public static let shared = FlashLocaleManager()
    
    public var currentLocale: FlashLocale!
    public var currentCountry: FlashCountries = .Thainland {
        didSet {
            var sourceName: String
            switch currentCountry {
            case .Philippines:
                sourceName = "LocalePH"
            case .Thainland, .Indonesia, .China:
                sourceName = "LocaleTH"
            case .Laos:
                sourceName = "LocaleLA"
            case .Malaysia:
                sourceName = "LocaleMY"
            }
            
            guard let bundlePath = Bundle(for: FlashLocaleManager.self).resourcePath,
                  let bundle = Bundle(path: bundlePath + "/FlashLocaleKit.bundle") else { return }
            
            guard let asset = NSDataAsset(name: sourceName, bundle: bundle) else { return }
            let data = asset.data
            guard let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) else { return }
            let jsonDecoder = JSONDecoder()
            guard let jsonData = try? JSONSerialization.data(withJSONObject: json, options: []) else { return }
            guard let model: FlashLocale = try? jsonDecoder.decode(FlashLocale.self, from: jsonData) else { return }
            currentLocale = model
        }
    }
}
