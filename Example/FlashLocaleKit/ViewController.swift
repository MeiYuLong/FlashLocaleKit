//
//  ViewController.swift
//  FlashLocaleKit
//
//  Created by longjiao914@126.com on 03/25/2021.
//  Copyright (c) 2021 longjiao914@126.com. All rights reserved.
//

import UIKit
import FlashLocaleKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        FlashLocaleManager.shared.currentCountry = .Philippines

        debugPrint(FlashLocaleManager.shared.currentLocale.country_info?.copyright_text ?? "get error")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

