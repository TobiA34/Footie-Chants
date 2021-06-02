//
//  LaLigaTeams.swift
//  ClubsCollectionView
//
//  Created by tobi adegoroye on 29/05/2021.
//

import UIKit
 
enum LaLigaTeamType {
    case Alavés
    case AthleticBilbao
    case AtléticoMadrid
    case Barcelona
    case Cádiz
    case CeltaVigo
    case Eibar
    case Elche
    case Getafe
    case Granada
    case Huesca
    case Levante
    case Osasuna
    case RealBetis
    case RealMadrid
    case RealSociedad
    case Sevilla
    case Valencia
    case Valladolid
    case Villarreal
}

enum LaLigaManagerType {
    case JavierCalleja
    case Marcelino
    case DiegoSimeone
    case RonaldKoeman
    case ÁlvaroCervera
    case EduardoCoudet
    case JoséLuisMendilibar
    case FranEscribá
    case Míchel
    case DiegoMartínez
    case JuanJoséRojoMartín
    case PacoLópez
    case JagobaArrasate
    case ManuelPellegrini
    case Zidane
    case ImanolAlguacil
    case vacant
    case JulenLopetegui
    case JoséBordalás
    case SergioGonzález
    case UnaiEmery
}
 
extension LaLigaManagerType{
var managerImage: UIImage {
    switch self {

    case .JavierCalleja:
        return UIImage(named: "JavierCalleja")!
    case .Marcelino:
        return UIImage(named: "Marcelino")!
    case .DiegoSimeone:
        return UIImage(named: "DiegoSimeone")!
    case .RonaldKoeman:
        return UIImage(named: "RonaldKoeman")!
    case .ÁlvaroCervera:
        return UIImage(named: "ÁlvaroCervera")!
    case .EduardoCoudet:
        return UIImage(named: "EduardoCoudet")!
    case .JoséLuisMendilibar:
        return UIImage(named: "JoséLuisMendilibar")!
    case .FranEscribá:
        return UIImage(named: "FranEscribá")!
    case .Míchel:
        return UIImage(named: "Míchel")!
    case .DiegoMartínez:
        return UIImage(named: "DiegoMartínez")!
    case .JuanJoséRojoMartín:
        return UIImage(named: "JuanJoséRojoMartín")!
    case .PacoLópez:
        return UIImage(named: "PacoLópez")!
    case .JagobaArrasate:
        return UIImage(named: "JagobaArrasate")!
    case .ManuelPellegrini:
        return UIImage(named: "ManuelPellegrini")!
    case .Zidane:
        return UIImage(named: "Zidane")!
    case .ImanolAlguacil:
        return UIImage(named: "ImanolAlguacil")!
    case .vacant:
        return UIImage(named: "vacant")!
    case .JulenLopetegui:
        return UIImage(named: "JulenLopetegui")!
    case .JoséBordalás:
        return UIImage(named: "JoséBordalás")!
    case .SergioGonzález:
        return UIImage(named: "SergioGonzález")!
    case .UnaiEmery:
        return UIImage(named: "UnaiEmery")!
    }
 }
}


extension LaLigaTeamType {
    var LaLigaBadge: UIImage {
        switch self {

        case .Alavés:
            return UIImage(named: "alaves_ic")!
        case .AthleticBilbao:
            return UIImage(named: "athletic_bilbao_ic")!
        case .AtléticoMadrid:
            return UIImage(named: "atletico_madrid_ic")!
        case .Barcelona:
            return UIImage(named: "barcelona_ic")!
        case .Cádiz:
            return UIImage(named: "cádiz_ic")!
        case .CeltaVigo:
            return UIImage(named: "celta_vigo_ic")!
        case .Eibar:
            return UIImage(named: "eibar_ic")!
        case .Elche:
            return UIImage(named: "elche_ic")!
        case .Getafe:
            return UIImage(named: "getafe_ic")!
        case .Granada:
            return UIImage(named: "granada_ic")!
        case .Huesca:
            return UIImage(named: "huesca_ic")!
        case .Levante:
            return UIImage(named: "levante_ic")!
        case .Osasuna:
            return UIImage(named: "osasuna_ic")!
        case .RealBetis:
            return UIImage(named: "real_betis_ic")!
        case .RealMadrid:
            return UIImage(named: "real_madrid_ic")!
        case .RealSociedad:
            return UIImage(named: "real_sociedad_ic")!
        case .Sevilla:
            return UIImage(named: "sevilla_ic")!
        case .Valencia:
            return UIImage(named: "valencia_ic")!
        case .Valladolid:
            return UIImage(named: "valladolid_ic")!
        case .Villarreal:
            return UIImage(named: "villarreal_ic")!
        }
    }
    
    var LaLigaStadium: String {
        switch self {
        case .Alavés:
            return "Mendizorrotza"
        case .AthleticBilbao:
            return "San Mamés"
        case .AtléticoMadrid:
            return "Wanda Metropolitano"
        case .Barcelona:
            return "Camp Nou"
        case .Cádiz:
            return "Ramón de Carranza"
        case .CeltaVigo:
            return "Abanca-Balaídos"
        case .Eibar:
            return "Ipurua"
        case .Elche:
            return "Martínez Valero"
        case .Getafe:
            return "Coliseum Alfonso Pérez"
        case .Granada:
            return "Nuevo Los Cármenes"
        case .Huesca:
            return "El Alcoraz"
        case .Levante:
            return "Ciutat de València"
        case .Osasuna:
            return "El Sadar"
        case .RealBetis:
            return "Benito Villamarín"
        case .RealMadrid:
            return "Santiago Bernabéu"
        case .RealSociedad:
            return "Anoeta"
        case .Sevilla:
            return "Ramón Sánchez Pizjuán"
        case .Valencia:
            return "Mestalla"
        case .Valladolid:
            return "José Zorrilla"
        case .Villarreal:
            return "Estadio de la Cerámica"
        }
    }
    
    var LaLigaBackground: UIColor {
        switch self {
        case .Alavés:
            return UIColor(named: "Alaves_bg")!
        case .AthleticBilbao:
            return UIColor(named: "AthleticBilbao_bg")!
        case .AtléticoMadrid:
            return UIColor(named: "AtleticoMadrid_bg")!
        case .Barcelona:
            return UIColor(named: "Barcelona_bg")!
        case .Cádiz:
            return UIColor(named: "Cádiz_bg")!
        case .CeltaVigo:
            return UIColor(named: "CeltaVigo_bg")!
        case .Eibar:
            return UIColor(named: "Eibar_bg")!
        case .Elche:
            return UIColor(named: "Elche_bg")!
        case .Getafe:
            return UIColor(named: "Getafe_bg")!
        case .Granada:
            return UIColor(named: "Granada_bg")!
        case .Huesca:
            return UIColor(named: "Huesca_bg")!
        case .Levante:
            return UIColor(named: "Levante_bg")!
        case .Osasuna:
            return UIColor(named: "Osasuna_bg")!
        case .RealBetis:
            return UIColor(named: "RealBetis_bg")!
        case .RealMadrid:
            return UIColor(named: "RealMadrid_bg")!
        case .RealSociedad:
            return UIColor(named: "RealSociedad_bg")!
        case .Sevilla:
            return UIColor(named: "Sevilla_bg")!
        case .Valencia:
            return UIColor(named: "Valencia_bg")!
        case .Valladolid:
            return UIColor(named: "Valladolid_bg")!
        case .Villarreal:
            return UIColor(named: "Villarreal_bg")!
        }
    }
    
    var LaLigaChantFile: String {
 
        switch self {
        case .Alavés:
            return "alavés"
        case .AthleticBilbao:
            return "athletic_bilbao"
        case .AtléticoMadrid:
            return "atlético_madrid"
        case .Barcelona:
            return "barcelona"
        case .Cádiz:
            return "cádiz"
        case .CeltaVigo:
            return "celta_vigo"
        case .Eibar:
            return "eibar"
        case .Elche:
            return "elche"
        case .Getafe:
            return "getafe"
        case .Granada:
            return "granada"
        case .Huesca:
            return "huesca"
        case .Levante:
            return "levante"
        case .Osasuna:
            return "osasuna"
        case .RealBetis:
            return "real_betis"
        case .RealMadrid:
            return "real_madrid"
        case .RealSociedad:
            return "real_sociedad"
        case .Sevilla:
            return "sevilla"
        case .Valencia:
            return "valencia"
        case .Valladolid:
            return "valladolid"
        case .Villarreal:
            return "villarreal"
        }
    }
}
