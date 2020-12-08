//
//  ShowViewController.swift
//  PracticeAnimmation
//
//  Created by user on 08/12/2020.
//

import UIKit

class ShowViewController: UIViewController {

    @IBOutlet weak var imageShow: UIImageView!
    @IBOutlet weak var loginShow: UIView!
    @IBOutlet weak var passwordShow: UIView!
    @IBOutlet weak var buttonShow: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        loginShow.center.x -= view.bounds.width
        passwordShow.center.x += view.bounds.width
        buttonShow.center.y += view.bounds.height
        imageShow.center.x -= view.bounds.width
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.0) {
            self.loginShow.center.x += self.view.bounds.width
            self.passwordShow.center.x -= self.view.bounds.width
            self.buttonShow.center.y -= self.view.bounds.height
            self.imageShow.center.x += self.view.bounds.width
            
            let translate = CGAffineTransform(translationX: 20, y: 20)
            let rotate = CGAffineTransform(rotationAngle: 360)
            let scale = CGAffineTransform(scaleX: 2, y: 2)
            self.imageShow.transform = translate.concatenating(scale)

        }
    }
}
