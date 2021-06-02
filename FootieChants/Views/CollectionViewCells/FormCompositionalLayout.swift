//
//  FormCompositionalLayout.swift
//  ClubsCollectionView
//
//  Created by tobi adegoroye on 25/05/2021.
//

import UIKit

class FormCompositionalLayout {
    
    var layout: NSCollectionLayoutSection {

    let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(300), heightDimension: .absolute(300)))
    item.contentInsets.bottom = 16
    item.contentInsets.trailing = 16
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(300), heightDimension: .fractionalHeight(300)), subitems: [item])
    let section = NSCollectionLayoutSection(group: group)
    section.contentInsets = .init(top: 32, leading: 16, bottom: 0, trailing: 0)
    return section
    
    }
}
