//
//  LeagueCell.swift
//  Derby Session
//
//  Created by Ярослав Агеенко on 22.12.2022.
//

import UIKit

class LeagueCell: UITableViewCell {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var teamName: UILabel!
    @IBOutlet weak var pg: UILabel!
    @IBOutlet weak var g: UILabel!
    @IBOutlet weak var pts: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }


}
