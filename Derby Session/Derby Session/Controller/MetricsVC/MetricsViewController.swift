//
//  MetricsViewController.swift
//  Derby Session
//
//  Created by Ярослав Агеенко on 23.12.2022.
//

import UIKit

class MetricsViewController: UIViewController {
    
    @IBOutlet weak var segmentedControlOutlet: UISegmentedControl!
    @IBAction func segmentedControl(_ sender: Any) {
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        collectionView.delegate = self
        collectionView.dataSource = self
        super.viewDidLoad()
        
        
    }
    
    
}
extension MetricsViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MetricsCollectionViewCell", for: indexPath) as! MetricsCollectionViewCell
        return cell
    }
    
    
}
