//
//  FiveViewController.swift
//  ThreeProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 09/03/23.
//

import UIKit

class FiveViewController: UIViewController {

    
    @IBOutlet var button: UIButton!
    @IBOutlet var labelOne: UILabel!
    @IBOutlet var labelTwo: UILabel!
    @IBOutlet var imageFive: UIImageView!
    
    var serieFive: BrazilianSeries = BrazilianSeries(name: "", descriptionSerie: "", chronology: "", characters: "", seasons: "", image: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOne.text = serieFive.name
        labelTwo.text = serieFive.seasons
        imageFive.image = UIImage(named: serieFive.image)
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func follow(_ sender: Any) {
        if let modal = self.storyboard?.instantiateViewController(identifier: "modal") {
            button.backgroundColor = .yellow
            self.present(modal, animated: true)
        }
    }
    
}
