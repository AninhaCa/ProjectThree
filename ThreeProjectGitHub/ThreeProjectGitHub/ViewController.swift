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
    BrazilianSeries(name: "A Grande Família", descriptionSerie: "Tipicamente brasileira, a família Silva mora em um subúrbio na Zona Norte do Rio de Janeiro, convive com suas diferenças e ajuda uns aos outros a contornar as situações mais inusitadas.", chronology: "Episódio final: 11 de setembro de 2014, Primeiro episódio: 29 de março de 2001 (Brasil)", characters: "Criadores: Vianinha, Armando Costa, Cláudio Paiva, Oduvaldo Vianna Filho, Gêneros: Comédia, Sitcom, Humor, Infantil", seasons: "Com 13 temporadas, a comédia sobre a família Silva é a mais longa série de televisão brasileira.", image: ""),
        BrazilianSeries(name: "Os Normais", descriptionSerie: "Rui e Vani são noivos há sete anos, mas ainda não se casaram oficialmente. Eles têm basicamente os mesmos gostos e neuroses, mas brigam sempre. Apesar dos conflitos, cenas de ciúmes, brincadeiras e muita confusão, eles se consideram um casal normal.", chronology: "Primeiro episódio: 1 de junho de 2001 (Brasil), Episódio final: 3 de outubro de 2003", characters: "Diretor: José Alvarenga Júnior, Emissora original: TV Globo", seasons: "Criada por Alexandre Machado e Fernanda Young, a série foi ao ar de 2001 a 2003, e trazia os problemas cotidianos dos noivos.", image: ""),
        BrazilianSeries(name: "Sai de Baixo", descriptionSerie: "Por necessidades financeiras, Cassandra, sua filha Magda e o marido desta, Caco, precisam pedir abrigo na casa de seu irmão, Vavá. Obrigado moralmente a recebê-los, Vavá, sua empregada e o porteiro tornam a vida de seus hóspedes um inferno.", chronology: "Primeiro episódio: 31 de março de 1996 (Brasil, Episódio final: 31 de março de 2002", characters: "Diretores: Daniel Filho, Dennis Carvalho, Jorge Fernando, José Wilker, Cininha de Paula, Elenco: Miguel Falabella", seasons: "Gravada no palco do teatro Procópio Ferreira de 1996 a 2002, a sitcom criada por Luis Gustavo e Daniel Filho foi outro grande sucesso da Globo. Com Miguel Falabella, Aracy Balabanian, Luiz Gustavo e Marisa Orth o humorístico entrou para a história da televisão brasileira, com os bordões de Caco Antibes e de Magda.", image: <#T##String#>),
        BrazilianSeries(name: "A Diarista", descriptionSerie: "Marinete é uma diarista que não tem medo de trabalho. Durante suas diárias, ela conhece novas pessoas e arranja muitas confusões. Suas amigas Solineuza, Dalila e Ipanema costumam ser os pivôs das enrascadas em que se envolve.", chronology: "Primeiro episódio: 13 de abril de 2004 (Brasil), Episódio final: 31 de julho de 2007", characters: "Criadores: Glória Perez, Bruno Mazzeo, Maria Mariana, Aloísio de Abreu, Diretor(es): José Alvarenga Júnior", seasons: "O que começou em 2003 como um especial de fim de ano, acabou virando série e ganhando quatro temporadas e então foi cancelada por problemas de saúde da protagonista Cláudia Rodriques.", image: <#T##String#>)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
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

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let two = self.storyboard?.instantiateViewController(identifier: "two") as? TwoViewController {
            two.serieTwo = arreySerie[indexPath.row]
            self.navigationController?.pushViewController(two, animated: true)
        }
    }
}
