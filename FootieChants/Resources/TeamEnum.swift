//
//  Badges.swift
//  Football Chants
//
//  Created by Tunde on 12/12/2020.
//

import UIKit
 
enum TeamType {
    case arsenal
    case astonVilla
    case brighton
    case burnley
    case chelsea
    case everton
    case fulham
    case leeds
    case leicester
    case liverpool
    case manchesterUnited
    case manchesterCity
    case newcastle
    case palace
    case sheffield
    case southampton
    case tottenham
    case westBrom
    case wolves
    case Alavés
    case AthleticBilbao
    case AtléticoMadrid
    case Barcelona
    case Angers
    case Bordeaux
    case Brest
    case Dijon
    case Lens
    case PSG
    case Juventus
    case Atalanta
    case Internazionale
    case Milan
}

enum ManagerType {
    case Arteta
    case Dean
    case Graham
    case Sean
    case Thomas
    case Ancelotti
    case Scott
    case Marcelo
    case Brendan
    case Jurgen
    case Ole
    case Pep
    case Steve
    case Roy
    case Chris
    case Ralph
    case Ryan
    case Sam
    case Nuno
    case JavierCalleja
    case Marcelino
    case DiegoSimeone
    case RonaldKoeman
    case Mauricio
    case DavidLinarès
    case FranckHaise
    case GéraldBaticle
    case JeanLouisGasset
    case OlivierDallOglio
    case Allegri
    case GianPieroGasperini
    case SimoneInzaghi
    case StefanoPioli

}
 
extension ManagerType{
var managerImage: UIImage {
    switch self {

    case .Arteta:
        return UIImage(named: "Arteta")!
    case .Dean:
        return UIImage(named: "Dean")!
    case .Graham:
        return UIImage(named: "Graham")!
    case .Sean:
        return UIImage(named: "Sean")!
    case .Thomas:
        return UIImage(named: "Thomas")!
    case .Ancelotti:
        return UIImage(named: "Ancelotti")!
    case .Scott:
        return UIImage(named: "Scott")!
    case .Marcelo:
        return UIImage(named: "Marcelo")!
    case .Brendan:
        return UIImage(named: "Brendan")!
    case .Jurgen:
        return UIImage(named: "Jurgen")!
    case .Ole:
        return UIImage(named: "Ole")!
    case .Pep:
        return UIImage(named: "Pep")!
    case .Steve:
        return UIImage(named: "Steve")!
    case .Roy:
        return UIImage(named: "Roy")!
    case .Chris:
        return UIImage(named: "Chris")!
    case .Ralph:
        return UIImage(named: "Ralph")!
    case .Ryan:
        return UIImage(named: "Ryan")!
    case .Sam:
        return UIImage(named: "Sam")!
    case .Nuno:
        return UIImage(named: "Nuno")!
    case .JavierCalleja:
        return UIImage(named: "JavierCalleja")!
    case .Marcelino:
        return UIImage(named: "Marcelino")!
    case .DiegoSimeone:
        return UIImage(named: "DiegoSimeone")!
    case .RonaldKoeman:
        return UIImage(named: "RonaldKoeman")!
    case .Mauricio:
        return UIImage(named: "Mauricio")!
    
    case .DavidLinarès:
        return UIImage(named: "DavidLinarès")!

    case .FranckHaise:
        return UIImage(named: "FranckHaise")!

    case .GéraldBaticle:
        return UIImage(named: "GéraldBaticle")!

    case .JeanLouisGasset:
        return UIImage(named: "JeanLouisGasset")!

    case .OlivierDallOglio:
        return UIImage(named: "OlivierDallOglio")!
    case .Allegri:
        return UIImage(named: "Allegri")!
    case .GianPieroGasperini:
        return UIImage(named: "GianPieroGasperini")!
    case .SimoneInzaghi:
        return UIImage(named: "SimoneInzaghi")!
    case .StefanoPioli:
        return UIImage(named: "StefanoPioli")!
    }
 }
}
 
extension TeamType {
    var badge: UIImage {
        switch self {

        case .arsenal:
            return UIImage(named: "arsenal_ic")!
        case .astonVilla:
            return UIImage(named: "aston_villa_ic")!
        case .brighton:
            return UIImage(named: "brighton_ic")!
        case .burnley:
            return UIImage(named: "burnley_ic")!
        case .chelsea:
            return UIImage(named: "chelsea_ic")!
        case .everton:
            return UIImage(named: "everton_ic")!
        case .fulham:
            return UIImage(named: "fulham_ic")!
        case .leeds:
            return UIImage(named: "leeds_ic")!
        case .leicester:
            return UIImage(named: "leicester_ic")!
        case .liverpool:
            return UIImage(named: "liverpool_ic")!
        case .manchesterUnited:
            return UIImage(named: "manchester_united_ic")!
        case .manchesterCity:
            return UIImage(named: "manchester_city_ic")!
        case .newcastle:
            return UIImage(named: "newcastle_ic")!
        case .palace:
            return UIImage(named: "palace_ic")!
        case .sheffield:
            return UIImage(named: "sheffield_ic")!
        case .southampton:
            return UIImage(named: "southampton_ic")!
        case .tottenham:
            return UIImage(named: "tottenham_ic")!
        case .westBrom:
            return UIImage(named: "west_brom_ic")!
        case .wolves:
            return UIImage(named: "wolves_ic")!
        case .Alavés:
            return UIImage(named: "alaves_ic")!
        case .AthleticBilbao:
            return UIImage(named: "athletic_bilbao_ic")!
        case .AtléticoMadrid:
            return UIImage(named: "atletico_madrid_ic")!
        case .Barcelona:
            return UIImage(named: "barcelona_ic")!
        case .Juventus:
            return UIImage(named: "juventus_ic")!

        case .Angers:
            return UIImage(named: "angers_ic")!

        case .Bordeaux:
            return UIImage(named: "bordeaux_ic")!

        case .Brest:
            return UIImage(named: "brest_ic")!

        case .Dijon:
            return UIImage(named: "dijon_ic")!
        case .PSG:
            return UIImage(named: "psg_ic")!
        case .Lens:
            return UIImage(named: "lens_ic")!

        case .Atalanta:
            return UIImage(named: "atalanta_ic")!
        case .Internazionale:
            return UIImage(named: "internazionale_ic")!
        case .Milan:
            return UIImage(named: "milan_ic")!
        }
    }
    
    var stadium: String {
        switch self {
        case .arsenal:
            return "Stadium: Emirates Stadium"
        case .astonVilla:
            return "Stadium: Villa Park"
        case .brighton:
            return "Stadium: American Express Community Stadium"
        case .burnley:
            return "Stadium: Turf Moor"
        case .chelsea:
            return "Stadium: Stamford Bridge"
        case .everton:
            return "Stadium: Goodison Park"
        case .fulham:
            return "Stadium: Craven Cottage"
        case .leeds:
            return "Stadium: Elland Road"
        case .leicester:
            return "Stadium: King Power Stadium"
        case .liverpool:
            return "Stadium: Anfield"
        case .manchesterUnited:
            return "Stadium: Old Trafford"
        case .manchesterCity:
            return "Stadium: Etihad Stadium"
        case .newcastle:
            return "Stadium: St. James' Park"
        case .palace:
            return "Stadium: Selhurst Park Stadium"
        case .sheffield:
            return "Stadium: Bramall Lane"
        case .southampton:
            return "Stadium: St Mary's Stadium"
        case .tottenham:
            return "Stadium: Tottenham Hotspur Stadium"
        case .westBrom:
            return "Stadium: The Hawthorns"
        case .wolves:
            return "Stadium: Molineux Stadium"
        case .Alavés:
            return "Mendizorrotza"
        case .AthleticBilbao:
            return "San Mamés"
        case .AtléticoMadrid:
            return "Wanda Metropolitano"
        case .Barcelona:
            return "Camp Nou"
        case .Juventus:
            return "Juventus Stadium"
        case .PSG:
            return "Parc des Princes"
        case .Angers:
            return "Stade Jean Bouin"
        case .Bordeaux:
            return "Matmut Atlantique"

        case .Brest:
            return "Stade Francis-Le Ble"

        case .Dijon:
            return "Stade Gaston-Gerard"

        case .Lens:
            return "Stade Bollaert-Delelis"
        case .Atalanta:
            return "Gewiss Stadium"
        case .Internazionale:
            return "San Siro Stadium"
        case .Milan:
            return "San Siro Stadium"
        }
    }
    
    var background: UIColor {
        switch self {

        case .arsenal:
            return UIColor(named: "arsenal_bg")!
        case .astonVilla:
            return UIColor(named: "aston_villa_bg")!
        case .brighton:
            return UIColor(named: "brighton_bg")!
        case .burnley:
            return UIColor(named: "burnley_bg")!
        case .chelsea:
            return UIColor(named: "chelsea_bg")!
        case .everton:
            return UIColor(named: "everton_bg")!
        case .fulham:
            return UIColor(named: "fulham_bg")!
        case .leeds:
            return UIColor(named: "leeds_bg")!
        case .leicester:
            return UIColor(named: "leicester_bg")!
        case .liverpool:
            return UIColor(named: "liverpool_bg")!
        case .manchesterUnited:
            return UIColor(named: "manchester_united_bg")!
        case .manchesterCity:
            return UIColor(named: "manchester_city_bg")!
        case .newcastle:
            return UIColor(named: "newcastle_bg")!
        case .palace:
            return UIColor(named: "palace_bg")!
        case .sheffield:
            return UIColor(named: "sheffield_bg")!
        case .southampton:
            return UIColor(named: "southampton_bg")!
        case .tottenham:
            return UIColor(named: "tottenham_bg")!
        case .westBrom:
            return UIColor(named: "west_brom_bg")!
        case .wolves:
            return UIColor(named: "wolves_bg")!
        case .Alavés:
            return UIColor(named: "Alaves_bg")!
        case .AthleticBilbao:
            return UIColor(named: "AthleticBilbao_bg")!
        case .AtléticoMadrid:
            return UIColor(named: "AtleticoMadrid_bg")!
        case .Barcelona:
            return UIColor(named: "Barcelona_bg")!
        case .PSG:
            return UIColor(named: "psg_bg")!
        case .Juventus:
            return UIColor(named: "juventus_bg")!
        case .Angers:
            return UIColor(named: "angers_bg")!
        case .Bordeaux:
            return UIColor(named: "bordeaux_bg")!
        case .Brest:
            return UIColor(named: "brest_bg")!
        case .Dijon:
            return UIColor(named: "dijon_bg")!
        case .Lens:
            return UIColor(named: "lens_bg")!
        case .Atalanta:
            return UIColor(named: "atalanta_bg")!
        case .Internazionale:
            return UIColor(named: "internazionale_bg")!
        case .Milan:
            return UIColor(named: "milan_bg")!
        }
    }
    
    var chantFile: String {
 
        switch self {

        case .arsenal:
            return "arsenal"
        case .astonVilla:
            return "aston_villa"
        case .brighton:
            return "brighton"
        case .burnley:
            return "burnley"
        case .chelsea:
            return "chelsea"
        case .everton:
            return "everton"
        case .fulham:
            return "fulham"
        case .leeds:
            return "leeds"
        case .leicester:
            return "leicester"
        case .liverpool:
            return "liverpool"
        case .manchesterUnited:
            return "manchester_united"
        case .manchesterCity:
            return "manchester_city"
        case .newcastle:
            return "newcastle"
        case .palace:
            return "palace"
        case .sheffield:
            return "sheffield"
        case .southampton:
            return "southampton"
        case .tottenham:
            return "tottenham"
        case .westBrom:
            return "west_brom"
        case .wolves:
            return "wolves"
        case .Alavés:
            return "alavés"
        case .AthleticBilbao:
            return "athletic_bilbao"
        case .AtléticoMadrid:
            return "atlético_madrid"
        case .Barcelona:
            return "barcelona"
        case .PSG:
            return "PSG"
        case .Juventus:
            return "Juventus"
        case .Angers:
            return "Angers"
        case .Bordeaux:
            return "Bordeaux"
        case .Brest:
            return "Brest"

        case .Dijon:
            return "Dijon"

        case .Lens:
            return "Lens"

        case .Atalanta:
            return "Atalanta"
        case .Internazionale:
            return "Internazionale"
        case .Milan:
            return "Milan"
        }
    }
}
