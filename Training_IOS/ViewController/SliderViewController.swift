//
//  SliderViewController.swift
//  Training_IOS
//
//  Created by Vũ Hồng Phúc on 17/04/2023.
//

import UIKit

class SliderViewController: UIViewController {
    @IBOutlet weak var slider_Age : UISlider!
    @IBOutlet weak var lb_Age : UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        slider_Age.maximumValue = 60
        slider_Age.minimumValue = 0
        slider_Age.value = 10
        slider_Age.thumbTintColor = .red
        slider_Age.minimumTrackTintColor = .black
        slider_Age.maximumTrackTintColor = .orange
        // Do any additional setup after loading the view.
    }
    @IBAction func sliderValueChanged (_sender: UISlider){
        let roundedValue = round(_sender.value)
        _sender.value = roundedValue
        lb_Age.text = "Your Age is " + Int(_sender.value).description
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
