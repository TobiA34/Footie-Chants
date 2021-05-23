//
//  PemierLeaugeTeamTableViewCell.swift
//  FootieChants
//
//  Created by tobi adegoroye on 23/05/2021.
//

import UIKit

class PemierLeaugeTeamTableViewCell: UITableViewCell {
    
    static let cellId = "TeamTableViewCell"
    
    // MARK: - UI
    private lazy var containerVw: UIView = {
        let vw = UIView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    private lazy var contentStackVw: UIStackView = {
        let stackvw = UIStackView()
        stackvw.translatesAutoresizingMaskIntoConstraints = false
        stackvw.spacing = 4
        stackvw.axis = .vertical
        return stackvw
    }()
    
    private lazy var badgeImgVw: UIImageView = {
        let imgVw = UIImageView()
        imgVw.translatesAutoresizingMaskIntoConstraints = false
        imgVw.contentMode = .scaleAspectFit
        return imgVw
    }()
    
    private lazy var managerImgVw: UIImageView = {
        let managerImgVw = UIImageView()
        managerImgVw.translatesAutoresizingMaskIntoConstraints = false
        managerImgVw.contentMode = .scaleAspectFit
        return managerImgVw
    }()
    
    private lazy var playBackBtn: UIButton = {
        let playBackBtn = UIButton()
        playBackBtn.translatesAutoresizingMaskIntoConstraints = false
        playBackBtn.tintColor = .white
         return playBackBtn
    }()
    
    
    private lazy var nameLabel: UILabel = {
        let lbl  = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 18, weight: .bold)
        lbl.textColor = .white
        return lbl
    }()
    
    private lazy var foundedLabel: UILabel = {
        let foundedLabel  = UILabel()
        foundedLabel.translatesAutoresizingMaskIntoConstraints = false
        foundedLabel.numberOfLines = 0
        foundedLabel.font = .systemFont(ofSize: 12, weight: .light)
        foundedLabel.textColor = .white
        return foundedLabel
    }()
    
    private lazy var stadiumLabel: UILabel = {
        let stadiumLabel  = UILabel()
        stadiumLabel.translatesAutoresizingMaskIntoConstraints = false
        stadiumLabel.numberOfLines = 0
        stadiumLabel.font = .systemFont(ofSize: 12, weight: .light)
        stadiumLabel.textColor = .white
        return stadiumLabel
    }()
    
    private lazy var jobLabel: UILabel = {
        let jobLabel  = UILabel()
        jobLabel.translatesAutoresizingMaskIntoConstraints = false
        jobLabel.numberOfLines = 0
        jobLabel.font = .systemFont(ofSize: 10, weight: .light)
        jobLabel.textColor = .white
        return jobLabel
    }()
    
    private lazy var infoLabel: UILabel = {
        let infoLabel  = UILabel()
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.numberOfLines = 0
        infoLabel.font = .systemFont(ofSize: 12, weight: .bold)
        infoLabel.textColor = .white
        return infoLabel
    }()
    
    private weak var delegate: TeamTableViewCellDelegate?
    private var team: Team?
    
    //MARK: - Lifecycle
    
    override func layoutSubviews() {
        super.layoutSubviews()
        containerVw.layer.cornerRadius = 10
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.team = nil
        self.delegate = nil
        self.contentView.subviews.forEach{ $0.removeFromSuperview() }
    }
    
}


extension PemierLeaugeTeamTableViewCell {
    
    func configure(with item : Team, delegate: TeamTableViewCellDelegate) {
        
        self.delegate = delegate
        self.team = item
        contentView.backgroundColor = Colour.background
        containerVw.backgroundColor = item.id.PremierLeagueBackground
        
        playBackBtn.addTarget(self, action: #selector(didTapPlayback), for: .touchUpInside)
        badgeImgVw.image = item.id.PremierLeaugeBadge
        managerImgVw.image = item.manager.managerID.managerImage
        playBackBtn.setImage(item.isPlaying ? Assets.pause : Assets.play, for: .normal)
        
        nameLabel.text = item.name
        stadiumLabel.text = item.id.PremierLeagueStadium
        foundedLabel.text = item.founded
        jobLabel.text = "Current: \(item.manager.job.rawValue):\(item.manager.name)"
        infoLabel.text = item.info
        
        self.contentView.addSubview(containerVw)
        containerVw.addSubview(badgeImgVw)
        containerVw.addSubview(managerImgVw)
        containerVw.addSubview(playBackBtn)

        containerVw.addSubview(contentStackVw)
        contentStackVw.addArrangedSubview(nameLabel)
        contentStackVw.addArrangedSubview(foundedLabel)
        contentStackVw.addArrangedSubview(stadiumLabel)
        contentStackVw.addArrangedSubview(jobLabel)
        contentStackVw.addArrangedSubview(infoLabel)
        
        NSLayoutConstraint.activate([
            
            containerVw.topAnchor.constraint(equalTo: self.contentView.topAnchor,constant: 8),
            
            containerVw.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8),
            containerVw.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor,constant: -8),
            containerVw.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8),
            
            badgeImgVw.heightAnchor.constraint(equalToConstant: 50),
            badgeImgVw.widthAnchor.constraint(equalToConstant: 50),
            badgeImgVw.topAnchor.constraint(equalTo: contentStackVw.topAnchor),
            badgeImgVw.leadingAnchor.constraint(equalTo: containerVw.leadingAnchor, constant:  8),
            
            managerImgVw.heightAnchor.constraint(equalToConstant: 60),
            managerImgVw.widthAnchor.constraint(equalToConstant: 60),
            managerImgVw.topAnchor.constraint(equalTo: badgeImgVw.bottomAnchor,constant: 8),
            managerImgVw.leadingAnchor.constraint(equalTo: containerVw.leadingAnchor, constant:  6),
            
            contentStackVw.topAnchor.constraint(equalTo: containerVw.topAnchor, constant:  16),
            contentStackVw.bottomAnchor.constraint(equalTo: containerVw.bottomAnchor, constant:  -16),
            contentStackVw.leadingAnchor.constraint(equalTo: badgeImgVw.trailingAnchor, constant:  8),
            contentStackVw.trailingAnchor.constraint(equalTo: playBackBtn.leadingAnchor, constant:  -8),
            
            playBackBtn.heightAnchor.constraint(equalToConstant: 44),
            playBackBtn.widthAnchor.constraint(equalToConstant: 44),
            playBackBtn.trailingAnchor.constraint(equalTo: containerVw.trailingAnchor, constant:  -8),
            playBackBtn.centerYAnchor.constraint(equalTo: containerVw.centerYAnchor)

        ])
        
    }
    
    
    @objc func didTapPlayback() {
         if let team = team {
            delegate?.didTapPlayBack(for: team)
        }
    }
    
    
    
}
