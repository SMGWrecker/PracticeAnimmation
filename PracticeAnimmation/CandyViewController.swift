//
//  CandyViewController.swift
//  PracticeAnimmation
//
//  Created by user on 06/12/2020.
//

import UIKit

class CandyViewController: UIViewController {

    @IBOutlet weak var candyPicture: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0, delay: 1.0, options: [.repeat, .autoreverse], animations: {
            self.candyPicture.frame.size.width = 105
            self.candyPicture.frame.size.height = 54
        }, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

  
    }
}
