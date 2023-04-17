//
//  StepperViewController.swift
//  Training_IOS
//
//  Created by Vũ Hồng Phúc on 17/04/2023.
//

import UIKit

class StepperViewController: UIViewController {
    @IBOutlet weak var lb_Stepper : UILabel!
    @IBOutlet weak var stepper : UIStepper!
    @IBOutlet weak var lb_Switch : UILabel!
    @IBOutlet weak var mySwitch : UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        stepper.autorepeat = true
        stepper.isContinuous = true
        lb_Stepper.text = stepper.value.description
        stepper.maximumValue = 20
        stepper.minimumValue = -20
        
        // Do any additional setup after loading the view.
    }
    @IBAction func stepperValueChanged(_sender : UIStepper){
        lb_Stepper.text = stepper.value.description
    }
    @IBAction func switchValueChanged(_sender : UIStepper){
        if(mySwitch.isOn){
            lb_Switch.text = "Switch is On"
        }else{
            lb_Switch.text = "Switch is Off"
        }
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
