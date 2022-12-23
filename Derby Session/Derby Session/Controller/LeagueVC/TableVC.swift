//
//  TableVC.swift
//  Derby Session
//
//  Created by Ярослав Агеенко on 22.12.2022.
//

import UIKit

class TableVC: UIViewController {

    @IBOutlet weak var informationLabel: UIImageView!
    
    var showDetails = true
    
    func makeDetailsVisible() {
        informationLabel.image = UIImage(named: "DetailsLeague")
        
    }
    func hideDetails(){
        informationLabel.image = UIImage(named: "LabelLeague")
    }
    
    @IBOutlet weak var showDetailsButton: UIButton!
    
    @IBAction func showDetailsButton(_ sender: UIButton) {
        if showDetails {
            makeDetailsVisible()
        } else {
            hideDetails()
        }
        tableView.reloadData()
        showDetails.toggle()
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    

  
}
extension TableVC : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if showDetails {
            let cell = tableView.dequeueReusableCell(withIdentifier: "leagueCell", for: indexPath) as! LeagueCell
            return cell
        }else{
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "LegueDetailCell", for: indexPath) as! LegueDetailCell
            return cell
            
        }
            
    }
    

}
