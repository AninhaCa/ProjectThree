//
//  ModalViewController.swift
//  ThreeProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 09/03/23.
//

import UIKit

class ModalViewController: UIViewController {

    @IBOutlet var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
 
    @IBAction func follow(_ sender: Any) {
        if let navigation = self.storyboard?.instantiateViewController(identifier: "navi") {
            button.backgroundColor = .yellow
            self.present(navigation, animated: true)
        }
    }
}
