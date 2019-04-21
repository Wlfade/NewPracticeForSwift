//
//  ViewController.swift
//  CollectionView
//
//  Created by 王玲峰 on 4/21/19.
//  Copyright © 2019 王玲峰. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource{
    
    
    var images = ["173890255948","173890450691","174074057446","175792428160","175792432633","176391685171"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        images.append("178647406694") //数组加一个元素
        let screenRect = UIScreen.main.bounds
        let rect = CGRect(x: 0, y: 20, width: screenRect.size.width, height: screenRect.size.height - 20)
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSize(width: 155, height: 135)
        flowLayout.scrollDirection = UICollectionView.ScrollDirection.vertical
        
        let collectionView = UICollectionView(frame: rect, collectionViewLayout: flowLayout)
        collectionView.backgroundColor = UIColor.white
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UICollectionViewCell.classForCoder(), forCellWithReuseIdentifier: "resuedCell")
        self.view.addSubview(collectionView)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let identifier = "resuedCell"
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifier, for: indexPath)
        //检查cell中是否存在tag值为1的UIImageView对象，如果不存在该UIImageView对象，就给cell添加一个新的UIImageView对象。
        let imageView:UIImageView? = cell.viewWithTag(1)as?UIImageView
        
        if imageView == nil {
            let image = UIImage(named: images[(indexPath as NSIndexPath).row])
            let imageView = UIImageView(image: image)
            imageView.frame = CGRect(x: 0, y: 0, width: 150, height: 135)
            imageView.layer.opacity = 0.5  //设置透明度
            imageView.tag = 1
            cell.addSubview(imageView)
            
            
        }else{
            imageView?.image = UIImage(named: images[(indexPath as NSIndexPath).row])
        }
        return cell
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        let imageView = cell?.viewWithTag(1)
        imageView?.layer.opacity = 1.0
        
        
    }



}

