//
//  ViewController.swift
//  Yuge
//
//  Created by Andres Moreno on 8/2/18.
//  Copyright © 2018 amd. All rights reserved.
//

import UIKit
import SwiftySound
import Toast_Swift

class ViewController: UIViewController {

    @IBOutlet weak var lblYugeCounter: UILabel!
    
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        lblYugeCounter.text = "You've yuged \(counter) times"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnYuge(_ sender: Any) {
        yuge()
    }
    
    func yuge(){
        self.view.makeToast("Yuge!")
        Sound.play(file: "yuge.mp3")
        counter += 1
        lblYugeCounter.text = "You've yuged \(counter) times"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        //performSegue(withIdentifier: "HomeToSlider", sender: nil)
    }
}

