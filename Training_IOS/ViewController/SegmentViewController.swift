//
//  SegmentViewController.swift
//  Training_IOS
//
//  Created by Vũ Hồng Phúc on 17/04/2023.
//

import UIKit

class SegmentViewController: UIViewController {
    @IBOutlet weak var segmentController : UISegmentedControl!
    @IBOutlet weak var viewContainer : UIView!
    var views = Array<UIView>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        views.append(VC1().view!)
        views.append(VC2().view!)
        for v in views{
            viewContainer.addSubview(v)
        }
        viewContainer.bringSubviewToFront(views[1])
    }
    @IBAction func switchViewAction(_sender : UISegmentedControl){
        viewContainer.bringSubviewToFront(views[_sender.selectedSegmentIndex])
    }

}
