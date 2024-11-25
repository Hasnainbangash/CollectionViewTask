//
//  ViewController.swift
//  CollectionViewTask
//
//  Created by Muhammad Hasnain Bangash on 23/11/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let imageBrain = ImageBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(UINib(nibName: "ImageCell", bundle: nil), forCellWithReuseIdentifier: "ImageReuseableCell")
    }


}

extension ViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageBrain.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageReuseableCell", for: indexPath) as! ImageCell
        
        cell.imageView.image = imageBrain.images[indexPath.row]
        
        return cell
        
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemPerRow: CGFloat = UIDevice.current.userInterfaceIdiom == .pad ? 9 : 5
        let padding: CGFloat = 2
        let totalPadding = padding * (itemPerRow - 1)
        let availableWidth = collectionView.frame.width - totalPadding
        let itemWidth = availableWidth / itemPerRow

        return CGSize(width: itemWidth, height: itemWidth)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }

}
