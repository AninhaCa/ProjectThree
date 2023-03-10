//
//  TwoViewController.swift
//  ThreeProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 09/03/23.
//

import UIKit

class TwoViewController: UIViewController {

    @IBOutlet var button: UIButton!
    @IBOutlet var imageTwo: UIImageView!
    @IBOutlet var labelOne: UILabel!
    @IBOutlet var labelTwo: UILabel!
    
    var serieTwo: BrazilianSeries = BrazilianSeries(name: "", descriptionSerie: "", chronology: "", characters: "", seasons: "", image: "")
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOne.text = serieTwo.name
        labelTwo.text = serieTwo.descriptionSerie
        imageTwo.image = UIImage(named: serieTwo.image)
    }

    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func follow(_ sender: Any) {
        if let three = self.storyboard?.instantiateViewController(identifier: "three") as? ThreeViewController {
            three.serieThree = self.serieTwo
            button.backgroundColor = .yellow
            self.navigationController?.pushViewController(three, animated: true)
        }
    }
}
