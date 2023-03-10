//
//  ThreeViewController.swift
//  ThreeProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 09/03/23.
//

import UIKit

class ThreeViewController: UIViewController {

    @IBOutlet var button: UIButton!
    @IBOutlet var labelOne: UILabel!
    @IBOutlet var labelTwo: UILabel!
    @IBOutlet var imageThree: UIImageView!
    
    var serieThree BrazilianSeries = BrazilianSeries(name: "", descriptionSerie: "", chronology: "", characters: "", seasons: "", image: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func follow(_ sender: Any) {
        if let four = self.storyboard?.instantiateViewController(identifier: "four") as? FourViewController {
            four.serieFour = self.serieThree
            button.backgroundColor = .yellow
            self.navigationController?.pushViewController(four, animated: true)
        }
    }
}
