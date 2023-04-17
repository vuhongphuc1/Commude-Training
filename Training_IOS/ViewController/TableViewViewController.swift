//
//  TableViewViewController.swift
//  Training_IOS
//
//  Created by Vũ Hồng Phúc on 17/04/2023.
//

import UIKit

class TableViewViewController: UIViewController, UITableViewDelegate{
    
    @IBOutlet weak var tbv_Components : UITableView!
    var dataSourceArr = Array<String>()
    override func viewDidLoad() {
        super.viewDidLoad()
        tbv_Components.delegate = self
        tbv_Components.dataSource = self
        dataSourceArr = ["Label", "Button", "Text Field", "Date Picker", "Slider", "Stepper", "Segment"]
        self.tbv_Components.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    

    

}
extension TableViewViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSourceArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tbv_Components.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = dataSourceArr[indexPath.row]
        cell.textLabel?.textAlignment = .center
        return cell
    }
}
