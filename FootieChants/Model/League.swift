//
//  Club.swift
//  ClubsCollectionView
//
//  Created by tobi adegoroye on 25/05/2021.
//

import UIKit

struct League {
    let name: String?
    let image: UIImage?
    let colour: UIColor?
    let teams: [Team]
}

 

struct Image {
    static let premierLeague = UIImage(named:"Premier-league")
    static let laLiga = UIImage(named:"LaLiga")
    static let ligue1 = UIImage(named:"Ligue1")
    static let serieA = UIImage(named:"Serie-A")

}

