//
//  ClubVC.swift
//  Derby Session
//
//  Created by Ярослав Агеенко on 23.12.2022.
//

import UIKit

class ClubVC: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var teamNameLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func choiseControl(_ sender: UISegmentedControl) {
        showVC(id: "Derby")
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
     
    }
    
}
extension ClubVC : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCellTableViewCell", for: indexPath) as! PlayerCellTableViewCell
            return cell
            
        }
            
    }
