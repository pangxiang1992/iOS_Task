//
//  SampleViewController.swift
//  HQPagerViewController
//
//  Created by quangpc on 11/11/16.
//  Copyright © 2016 quangpc. All rights reserved.
//

import UIKit

let titles = ["详情", "转台", "并台"]
let colors = [UIColor.hexColor(hex: "b2bab5"), UIColor.hexColor(hex: "b2bab5"), UIColor.hexColor(hex: "b2bab5")]
let normalIcons = [UIImage(named: "icon-trend"), UIImage(named: "icon-react"), UIImage(named: "icon-favorite")]
let highlightedIcons = [UIImage(named: "icon-trend-selected"), UIImage(named: "icon-react-selected"), UIImage(named: "icon-favorite-selected")]

class SampleViewController: UIViewController {

    var titleLabel: UILabel!
    var index: Int = 0
    
    override func viewDidLoad() {
       super.viewDidLoad()
        titleLabel = UILabel.init(frame: CGRect(origin: CGPoint(x: 100,y :100), size: CGSize(width: 200, height: 100)))
       self.view.addSubview(titleLabel)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        titleLabel.text = "ViewController #\(index)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension SampleViewController: HQPagerViewControllerDataSource {
    func menuViewItemOf(inPager pagerViewController: HQPagerViewController) -> HQPagerMenuViewItemProvider {
        let item = HQPagerMenuViewItemProvider(title: titles[index], normalImage:nil, selectedImage: highlightedIcons[index], selectedBackgroundColor: colors[index])
        return item
    }
}
