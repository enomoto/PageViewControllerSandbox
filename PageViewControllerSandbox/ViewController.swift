//
//  ViewController.swift
//  PageViewControllerSandbox
//
//  Created by kenta.enomoto on 2017/11/14.
//  Copyright © 2017年 kenta.enomoto. All rights reserved.
//

import UIKit

class ViewController: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstVC = storyboard!.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        self.setViewControllers([firstVC], direction: UIPageViewControllerNavigationDirection.forward, animated: true, completion: nil)
        self.dataSource = self
    }
}

extension ViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        switch viewController {
        case is FirstViewController:
            return storyboard!.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        case is SecondViewController:
            return storyboard!.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        case is ThirdViewController:
            return storyboard!.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        default:
            return nil
        }
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        switch viewController {
        case is FirstViewController:
            return storyboard!.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        case is SecondViewController:
            return storyboard!.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        case is ThirdViewController:
            return storyboard!.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        default:
            return nil
        }
    }
}
