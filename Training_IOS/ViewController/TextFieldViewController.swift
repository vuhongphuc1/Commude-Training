//
//  TextFieldViewController.swift
//  Training_IOS
//
//  Created by Vũ Hồng Phúc on 17/04/2023.
//

import UIKit

class TextFieldViewController: UIViewController {
    @IBOutlet weak var createUserSuccessView: UIView!
          
        @IBOutlet weak var tf_Name: UITextField!
          
        @IBOutlet weak var tf_Email: UITextField!
          
        @IBOutlet weak var tf_Mobibe: UITextField!
          
        @IBOutlet weak var tf_Password: UITextField!
          
        @IBOutlet weak var lb_Summit: UILabel!
          
        @IBOutlet weak var lb_Result: UILabel!
          
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            setInitViews()
            lb_Summit.isUserInteractionEnabled = true
            let tap = UITapGestureRecognizer(target: self, action: #selector(sbmtBtnTapped(sender:)))
            lb_Summit.addGestureRecognizer(tap)
        }
        func setInitViews(){
            tf_Name.becomeFirstResponder()
            tf_Email.delegate = self
            tf_Password.delegate = self
            tf_Name.delegate = self
            tf_Mobibe.delegate = self
              
        }
          
          
        @objc func sbmtBtnTapped(sender: UITapGestureRecognizer){
            if(tf_Name.text?.isEmpty ?? false || tf_Email.text?.isEmpty ?? false || tf_Mobibe.text?.isEmpty ?? false || tf_Password.text?.isEmpty ?? false){
                let alert = UIAlertController(title: nil, message: "Please fill all the details", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default) { (action) in
                    self.dismiss(animated: true, completion: nil)
                }
                alert.addAction(action)
                self.present(alert, animated: true, completion: nil)
            }
            else{
                lb_Result.text = "Hi " + (tf_Name.text ?? "")
                createUserSuccessView.isHidden = false
                  
            }
        }
    }
      
      
    extension TextFieldViewController:UITextFieldDelegate{

        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            if(textField == tf_Mobibe){
                let currrentCharacterCount = textField.text?.count ?? 0
                if range.length + range.location > currrentCharacterCount {
                    return false
                }
                let newLength = currrentCharacterCount + string.count - range.length
                return newLength <= 10
            }
            else{
            return true
            }
        }
    }
