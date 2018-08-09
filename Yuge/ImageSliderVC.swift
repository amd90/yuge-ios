//
//  ImageSliderVC.swift
//  Yuge
//
//  Created by Andres Moreno on 8/5/18.
//  Copyright © 2018 amd. All rights reserved.
//

import UIKit
import ImageSlideshow

class ImageSliderVC: UIViewController {
    var imgArr = ["https://mspoweruser.com/wp-content/uploads/2017/05/steve-ballmer-1200x764.jpg",
                  "http://mspoweruser.com/wp-content/uploads/msn/2013/06/Steve-Ballmer.jpg",
                  "https://hipertextual.com/files/2013/11/steveballmer-670x410.jpg"
    ]
    @IBOutlet weak var ivSlider: ImageSlideshow!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(ImageSlideshow.description())
        print(imgArr.count)
        
        
        var inputs = [InputSource]()
        
        for item in imgArr {
            inputs.append(KingfisherSource(urlString: item)!)
        }
        
        ivSlider.setImageInputs(inputs)
        
        ivSlider.contentScaleMode = .scaleAspectFill
        ivSlider.slideshowInterval = 3
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
