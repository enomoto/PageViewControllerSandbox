//
//  ThirdViewController.swift
//  PageViewControllerSandbox
//
//  Created by kenta.enomoto on 2017/11/14.
//  Copyright © 2017年 kenta.enomoto. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var isGray = false

    @IBAction func didTapToggleButton(_ sender: Any) {
        isGray = !isGray
        if isGray {
            view.backgroundColor = .gray
        } else {
            view.backgroundColor = .white
        }
    }
}
