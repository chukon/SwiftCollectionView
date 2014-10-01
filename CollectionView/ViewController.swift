//
//  ViewController.swift
//  CollectionView
//
//  Created by Michael Babiy on 6/3/14.
//  Copyright (c) 2014 Michael Babiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    
    var images = ["220.jpg"]
                            
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as HomeCollectionViewCell
        cell.imageView.image = UIImage(named:images[indexPath.row])
        return cell
    }
    
}

