//
//  ClubCollectionViewCell.swift
//  ClubsCollectionView
//
//  Created by tobi adegoroye on 25/05/2021.
//

import UIKit
 

class LeagueCollectionViewCell: UICollectionViewCell {
    
    static let cellID = "ClubCollectionViewCell"
    private var league: League?
    private var indexPath:IndexPath?
    
    // MARK: - Properties
    lazy var roundedBackgroundView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 10
        view.layer.borderColor = UIColor.systemGray.cgColor
        view.layer.borderWidth = 1
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HelveticaNeue", size: 20)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var img: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Next", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    
}

// MARK: - UI Setup
extension LeagueCollectionViewCell {
    
    func configure(league: League) {
        self.league = league
        img.image = league.image
        titleLabel.text = league.name
        roundedBackgroundView.backgroundColor = league.colour
        setupUI()
    }
    
    private func setupUI() {
        self.contentView.addSubview(roundedBackgroundView)
        roundedBackgroundView.addSubview(img)
        roundedBackgroundView.addSubview(titleLabel)
 
        NSLayoutConstraint.activate([
            roundedBackgroundView.topAnchor.constraint(equalTo:  contentView.topAnchor,constant: 8),
            roundedBackgroundView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            roundedBackgroundView.leadingAnchor.constraint(equalTo:  contentView.leadingAnchor, constant: 5),
            roundedBackgroundView.trailingAnchor.constraint(equalTo:  contentView.trailingAnchor, constant: -5),
            roundedBackgroundView.bottomAnchor.constraint(equalTo:  contentView.bottomAnchor, constant: -8),
            
            titleLabel.topAnchor.constraint(equalTo: roundedBackgroundView.topAnchor,constant: 8),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: roundedBackgroundView.trailingAnchor,constant: -8),
            
            img.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 20),
            img.leadingAnchor.constraint(equalTo: roundedBackgroundView.leadingAnchor,constant: 10),
            img.trailingAnchor.constraint(equalTo: roundedBackgroundView.trailingAnchor,constant: -10),
            img.bottomAnchor.constraint(equalTo: roundedBackgroundView.bottomAnchor,constant: -20)
        ])
        
    }
}
