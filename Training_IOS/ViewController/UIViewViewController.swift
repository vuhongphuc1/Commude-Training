//
//  UIViewViewController.swift
//  Training_IOS
//
//  Created by Vũ Hồng Phúc on 17/04/2023.
//

import UIKit

class UIViewViewController: UIViewController {
    @IBOutlet weak var headerView : UIView!
    @IBOutlet weak var bodyView : UIView!
    @IBOutlet weak var footerView : UIView!
    @IBOutlet weak var lb_header : UILabel!
    @IBOutlet weak var lb_body : UILabel!
    @IBOutlet weak var lb_footer : UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
//        let frame1 = CGRect(x: 100, y: 100, width: 200, height: 300)
//        let myView1 = UIView(frame: frame1)
//        myView1.layer.shadowColor = UIColor.black.cgColor
//        myView1.layer.borderColor = UIColor.black.cgColor
//        myView1.layer.borderWidth = 2
//        myView1.layer.cornerRadius = 5
//        myView1.layer.shadowRadius = 20
//        myView1.backgroundColor = .red
//        view.addSubview(myView1)
        let headerTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(headerLblTapped))
                lb_header.isUserInteractionEnabled = true
                lb_header.addGestureRecognizer(headerTapGestureRecognizer)
        let bodyTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(bodyLblTapped))
                lb_body.isUserInteractionEnabled = true
                lb_body.addGestureRecognizer(bodyTapGestureRecognizer)
        let footerTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(footerLblTapped))
                lb_footer.isUserInteractionEnabled = true
                lb_footer.addGestureRecognizer(footerTapGestureRecognizer)

    }
    @objc func headerLblTapped(){
            headerView.backgroundColor = .orange
        }
    @objc func bodyLblTapped(){
            bodyView.backgroundColor = .red
        }
    @objc func footerLblTapped(){
            footerView.backgroundColor = .green
        }
}
