//
//  Manager.swift
//  FootieChants
//
//  Created by tobi adegoroye on 23/05/2021.
//
 
import Foundation

enum  JobType: String {
    case manager = "Manager"
    case headCoach = "HeadCoach"
}

class Manager {
    
    let name: String
    let job: JobType
 
    let managerID: PremierLeagueManagerType
    
    internal init(name: String, job: JobType, managerID: PremierLeagueManagerType) {
        self.name = name
        self.job = job
        self.managerID = managerID
    }
    
 }
