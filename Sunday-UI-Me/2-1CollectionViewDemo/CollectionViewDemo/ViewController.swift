//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Sundy on 1/20/15.
//  Copyright (c) 2015 maiziedu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    // 数据源
    var images = ["1","2","3","4","5","6","7","8","9","1","2","3","4","5","6","7","8","9","1","2","3","4","5","6","7","8","9"]
    
    @IBOutlet var collectionView1: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView1.dataSource = self
        collectionView1.delegate = self
    }

    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 27
    }
    
    // The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        // 单元格
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier("sundycell", forIndexPath: indexPath) as! UICollectionViewCell
        var imageView = cell.viewWithTag(1) as! UIImageView
        imageView.image = UIImage(named: images[indexPath.row])
        return cell
        
    }
}

