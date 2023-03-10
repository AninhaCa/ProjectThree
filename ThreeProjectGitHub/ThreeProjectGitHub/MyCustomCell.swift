//
//  MyCustomCell.swift
//  ThreeProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 09/03/23.
//

import UIKit

class MyCustomCell: UITableViewCell {

    @IBOutlet var labelCell: UILabel!
    @IBOutlet var imageCell: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup(serieCell: BrazilianSeries) {
        labelCell.text = serieCell.name
        imageCell.image = UIImage(named: serieCell.image)
    }
}
