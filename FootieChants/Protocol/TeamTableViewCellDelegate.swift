//
//  TeamTableViewCellDelegate.swift
//  FootieChants
//
//  Created by tobi adegoroye on 23/05/2021.
//

import Foundation

protocol TeamTableViewCellDelegate: AnyObject {
    func didTapPlayBack(for team: Team)
}
