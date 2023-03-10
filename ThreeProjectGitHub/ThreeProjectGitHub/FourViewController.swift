//
//  FourViewController.swift
//  ThreeProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 09/03/23.
//

import UIKit

class FourViewController: UIViewController {

    @IBOutlet var button: UIButton!
    @IBOutlet var labelOne: UILabel!
    @IBOutlet var labelTwo: UILabel!
    @IBOutlet var imageFour: UIImageView!
    
    var serieFour BrazilianSeries = BrazilianSeries(name: "", descriptionSerie: "", chronology: "", characters: "", seasons: "", image: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func follow(_ sender: Any) {
    }
}
