//
//  ViewController.swift
//  CollectionViewTask
//
//  Created by Muhammad Hasnain Bangash on 23/11/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var images = [
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture1"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture1"),
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture1"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture2"),
        UIImage(named: "picture3"),
        UIImage(named: "picture4"),
        UIImage(named: "picture5"),
        UIImage(named: "picture1"),
        UIImage(named: "picture1")
    ]
    
    
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
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageReuseableCell", for: indexPath) as! ImageCell
        
        cell.imageView.image = images[indexPath.row]
        
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
