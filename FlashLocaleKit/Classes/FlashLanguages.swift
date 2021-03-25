//
//  FlashLanguages.swift
//  FlashLocaleManager
//
//  Created by 宋东昊 on 2021/2/19.
//

import Foundation

public enum FlashLanguages {
    /// 简体中文
    case SimplifiedChinese
    /// 美国英语
    case English
    /// 泰语
    case Thai
    /// 老挝语
    case Laotian
    
    public var description: String {
        switch self {
        case .SimplifiedChinese:
            return "简体中文"
        case .English:
            return "English"
        case .Thai:
            return "ภาษาไทย"
        case .Laotian:
            return "ພາສາລາວ"
        }
    }
}
