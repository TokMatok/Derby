//
//  MainMenuVC.swift
//  Derby Session
//
//  Created by Ярослав Агеенко on 22.12.2022.
//

import UIKit

class MainMenuVC: UIViewController {
    
    
    @IBOutlet weak var goLeagueButton: UIButton!
    
    @IBAction func goLeagueButton(_ sender: UIButton) {
        showVC(id: "TableVC")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "MainMenu")
        self.view.insertSubview(backgroundImage, at: 0)
        
        
    }
    
    
}
