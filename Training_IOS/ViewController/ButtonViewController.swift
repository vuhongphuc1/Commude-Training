//
//  ButtonViewController.swift
//  Training_IOS
//
//  Created by Vũ Hồng Phúc on 17/04/2023.
//

import UIKit

class ButtonViewController: UIViewController {
    @IBOutlet weak var mainView : UIView!
    @IBOutlet weak var btn_Change : UIButton!
    var didTap = true
    override func viewDidLoad() {
        super.viewDidLoad()
        btn_Change.backgroundColor = .blue
        btn_Change.layer.cornerRadius = 10
        btn_Change.isHighlighted = true
        btn_Change.isSelected = true
    }
    
    @IBAction func btn_ChangeTap(_ sender: Any) {
        if(didTap){
            mainView.backgroundColor = .orange
            didTap = false
        }else{
            mainView.backgroundColor = .groupTableViewBackground
            didTap = true
        }
    }
    


}
