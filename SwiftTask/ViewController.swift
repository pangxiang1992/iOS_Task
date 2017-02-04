//
//  ViewController.swift
//  iOS_Task
//
//  Created by 庞翔 on 2017/2/3.
//  Copyright © 2017年 庞翔. All rights reserved.
//

import UIKit

class ViewController: HQPagerViewController {
    
    @IBOutlet weak var bottomViews: UIView!
    @IBOutlet weak var order: UIButton!
    @IBOutlet weak var Checkout: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        //        setSelectedIndex(index: 1, animated: false)
        
        // build viewcontrollers
        let vc1 = SampleViewController()
        vc1.index = 0
        let vc2 = SampleViewController()
        vc2.index = 1
        let vc3 = SampleViewController()
        vc3.index = 2
        //let vc4 = SampleViewController()
        //vc4.index = 3
        
        self.viewControllers = [vc1, vc2, vc3]
        
        //        menuView.titleFont = UIFont.boldSystemFont(ofSize: 14)
        menuView.titleTextColor = UIColor.blue
        
        order.frame = CGRect(origin: CGPoint(x: 0,y :0), size: CGSize(width: bottomViews.bounds.size.width/2, height: bottomViews.bounds.size.height))
        
        Checkout.frame = CGRect(origin: CGPoint(x: bottomViews.bounds.size.width/2,y :0), size: CGSize(width: bottomViews.bounds.size.width/2, height: bottomViews.bounds.size.height))
        
        //    let vc4 = SampleViewController()
        //    vc4.index = 0
        //    let vc5 = SampleViewController()
        //    vc5.index = 1
        //    let vc6 = SampleViewController()
        //    vc6.index = 2
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

