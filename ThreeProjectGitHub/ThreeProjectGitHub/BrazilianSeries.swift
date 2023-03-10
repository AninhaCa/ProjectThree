//
//  BrazilianSeries.swift
//  ThreeProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 09/03/23.
//

import UIKit

class BrazilianSeries: NSObject {
    var name: String
    var descriptionSerie: String
    var chronology: String
    var characters: String
    var seasons: String
    var image: String
    
    init(name: String, descriptionSerie: String, chronology: String, characters: String, seasons: String, image: String) {
        self.name = name
        self.descriptionSerie = descriptionSerie
        self.chronology = chronology
        self.characters = characters
        self.seasons = seasons
        self.image = image
    }
}
