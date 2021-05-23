//
//  ViewController.swift
//  FootieChants
//
//  Created by tobi adegoroye on 23/05/2021.
//

import UIKit

class PremierLeaugeViewController: UIViewController {
    //MARK:- UI
        
        private lazy var tableView: UITableView = {
            let tableView = UITableView()
            tableView.translatesAutoresizingMaskIntoConstraints = false
            tableView.backgroundColor = .clear
            tableView.rowHeight = UITableView.automaticDimension
            tableView.estimatedRowHeight = 44
            tableView.separatorStyle = .none
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
            tableView.register(PemierLeaugeTeamTableViewCell.self, forCellReuseIdentifier: PemierLeaugeTeamTableViewCell.cellId)
            return tableView
        }()
        
        private lazy var premierLeaugeTeamsViewModel = PremierLeaugeTeamsViewModel()
        private lazy var audioManagerViewModel = AudioMangerViewModel()

        //MARK: - LifeCycle
        
        override func loadView() {
            super.loadView()
            setup()
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            self.view.backgroundColor = Colour.background
        }
    }

    extension PremierLeaugeViewController {
        func setup() {
            
            self.navigationController?.navigationBar.topItem?.title = "Football Chants"
            
            self.navigationController?.navigationBar.prefersLargeTitles = true
            
            tableView.dataSource = self
            
            self.view.addSubview(tableView)
            
            NSLayoutConstraint.activate([
                tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
                tableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
                tableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
                tableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
                tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor)
            ])
        }
    }

     //MARK: - UITableViewDataSource
    extension PremierLeaugeViewController: UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return premierLeaugeTeamsViewModel.teams.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let team = premierLeaugeTeamsViewModel.teams[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: PemierLeaugeTeamTableViewCell.cellId, for: indexPath) as! PemierLeaugeTeamTableViewCell
            cell.configure(with:team, delegate: self)
            cell.selectionStyle = .none
            return cell
        }
    }

    extension PremierLeaugeViewController: TeamTableViewCellDelegate {
        func didTapPlayBack(for team: Team) {
            audioManagerViewModel.playback(team)
            premierLeaugeTeamsViewModel.togglePlayback(for: team)
            tableView.reloadData()
            print("The item selected:\(team.name)")
        }
    }
 
