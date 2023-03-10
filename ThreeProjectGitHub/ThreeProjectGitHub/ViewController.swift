//
//  ViewController.swift
//  ThreeProjectGitHub
//
//  Created by Ana Paula Silva de Sousa on 09/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myTableView: UITableView!
    var arreySerie: [BrazilianSeries] = [
    BrazilianSeries(name: "", descriptionSerie: "", chronology: "", characters: "", seasons: "", image: "")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        let XIB = UINib(nibName: "MyCustomXIB", bundle: nil)
        myTableView.register(XIB, forCellReuseIdentifier: "cellXIB")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arreySerie.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 2 {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MyCustomCell {
                cell.setup(serieCell: arreySerie[indexPath.row])
                return cell
            }
        } else {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "cellXIB", for: indexPath) as? MyCustomXIB {
                cell.setup(SerieXIB: arreySerie[indexPath.row])
                return cell
            }
        }
        
        return UITableViewCell()
    }
}
