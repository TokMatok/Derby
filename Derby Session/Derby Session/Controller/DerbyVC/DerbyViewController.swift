//
//  DerbyViewController.swift
//  Derby Session
//
//  Created by Ярослав Агеенко on 23.12.2022.
//

import UIKit

class DerbyViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DerbyCollectionViewCell", for: indexPath) as! DerbyCollectionViewCell
        return cell
    }
    //collectionViewClub
    
    
    @IBOutlet weak var teamLogo: UIImageView!
    @IBOutlet weak var TeamName: UILabel!
    
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        showVC(id: "Club")
    }
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        collectionView.delegate = self
        collectionView.dataSource = self
        super.viewDidLoad()
    }
    
    
}
