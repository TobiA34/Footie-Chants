//
//  Team.swift
//  FootieChants
//
//  Created by tobi adegoroye on 23/05/2021.
//

import UIKit

class Team {

    let id: TeamType
    let name: String
    let manager: Manager
    let info: String
    let founded: String
    var isPlaying: Bool
    
    internal init(id: TeamType, name: String, manager: Manager, info: String, founded: String, isPlaying: Bool = false) {
        self.id = id
        self.name = name
        self.manager = manager
        self.info = info
        self.founded = founded
        self.isPlaying = isPlaying
    }
    
    
}
 
