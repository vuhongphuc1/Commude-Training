//
//  LabelViewController.swift
//  Training_IOS
//
//  Created by Vũ Hồng Phúc on 17/04/2023.
//

import UIKit

class LabelViewController: UIViewController {
    
    @IBOutlet weak var lb_Text: UILabel!
    var didTap = true
    override func viewDidLoad() {
        super.viewDidLoad()
        lb_Text.text = "Hello World"
        lb_Text.font = .italicSystemFont(ofSize: 30)
        lb_Text.backgroundColor = UIColor.blue
        lb_Text.textAlignment = .center
        lb_Text.textColor = UIColor.white
        lb_Text.shadowColor = UIColor.black
        lb_Text.isHighlighted = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTextLabelTap(sender:)))
        lb_Text.isUserInteractionEnabled = true
        lb_Text.addGestureRecognizer(tap)
    }
    
    @objc func didTextLabelTap(sender : UITapGestureRecognizer){
        if(didTap){
            lb_Text.backgroundColor  = .brown
            didTap = false
        }else{
            lb_Text.backgroundColor = .blue
            didTap = true
        }
    }
}

