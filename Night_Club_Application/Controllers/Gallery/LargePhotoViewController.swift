//
//  LargePhotoViewController.swift
//  Night_Club_Application
//
//  Created by Lubomir Olshansky on 23/06/2018.
//  Copyright © 2018 Lubomir Olshansky. All rights reserved.
//

import UIKit

class LargePhotoViewController: UIViewController {
    
    
    @IBOutlet weak var photoNumber: UILabel!
    @IBOutlet weak var largePhoto: UIImageView!
    @IBOutlet weak var nextOutlet: UIButton!
    @IBOutlet weak var backOutlet: UIButton!
    
    var images: [UIImage] = []
    var currentImage = 0
    enum NavigationHelper: Int { case next = 1, previous, firstLoad }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        largePhoto.image = images[currentImage]
        updatePhoto(with: NavigationHelper.firstLoad)
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        tap.numberOfTapsRequired = 1
        largePhoto.addGestureRecognizer(tap)
        
        print(currentImage)
    }

    @objc func handleTap(_ recognizer: UITapGestureRecognizer) {
        print("tap working")
        if recognizer.state == .recognized
        {
            let touchLocation = recognizer.location(in: recognizer.view).x
            if touchLocation > (self.largePhoto.bounds.size.width / 2) {
                updatePhoto(with: NavigationHelper.next)
            } else {
                updatePhoto(with: NavigationHelper.previous)
            }
        }
    }
    func updatePhoto(with navigate: NavigationHelper) {
        switch navigate {
        case .next:
            guard currentImage < images.count - 1 else {return}
            currentImage += 1
        case .previous:
            guard currentImage > 0 else {return}
            currentImage -= 1
        case .firstLoad:
            break
        }

       changeLabelAndPhoto()
    }

    func changeLabelAndPhoto(){
        photoNumber.text = "\(currentImage + 1)/\(images.count)"
        largePhoto.image = images[currentImage]
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        updatePhoto(with: NavigationHelper.next)
    }
    
    @IBAction func backButton(_ sender: Any) {
        
        updatePhoto(with: NavigationHelper.previous)
    }
  
    
    
}
