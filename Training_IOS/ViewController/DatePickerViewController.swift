//
//  DatePickerViewController.swift
//  Training_IOS
//
//  Created by Vũ Hồng Phúc on 17/04/2023.
//

import UIKit

class DatePickerViewController: UIViewController {
    @IBOutlet weak var tf_Input : UITextField!
    @IBOutlet weak var datePicker : UIDatePicker!
    let dateFormatter = DateFormatter()
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        tf_Input.inputView = datePicker
        datePicker.datePickerMode = .date
        tf_Input.text = dateFormatter.string(from: datePicker.date)
        // Do any additional setup after loading the view.
    }
    @IBAction func datePickerValueChanged(_sender: UIDatePicker){
        tf_Input.text = dateFormatter.string(from: _sender.date)
        view.endEditing(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
