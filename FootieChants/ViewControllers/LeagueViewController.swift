 
 import UIKit
 
 class LeagueViewController: UICollectionViewController {
    
    private let leagueViewModel = LeagueViewModel()
    
    init() {
        super.init(collectionViewLayout: LeagueViewController.createLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    static func createLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout { sectionNumber, env -> NSCollectionLayoutSection? in
            
            if sectionNumber == 0 {
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(0.5), heightDimension: .absolute(300)))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(1000)), subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets = .init(top: 32, leading: 16, bottom: 0, trailing: 0)
                return section
            } else {
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .absolute(400), heightDimension: .absolute(400)))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(1000)), subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.contentInsets = .init(top: 32, leading: 16, bottom: 0, trailing: 0)
                return section
            }
        }
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let league = leagueViewModel.leagues[indexPath.row]
        
        
        
        print("Selected: \(league)")
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return leagueViewModel.leagues.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let club = leagueViewModel.leagues[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LeagueCollectionViewCell.cellID, for: indexPath) as! LeagueCollectionViewCell
        cell.configure(league: club,delegate: self)
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = Colour.background
        navigationItem.title = "Leauges"
        
        collectionView.register(LeagueCollectionViewCell.self, forCellWithReuseIdentifier: LeagueCollectionViewCell.cellID)
        collectionView.dataSource = self
    }
    
 }
 
 
 extension LeagueViewController: LeagueCollectionViewCellDelegate {
    func didTapButton(leauge: League) {
        
        for team in leauge.teams {
            print("Team name: \(team.name)")
        }
        let vc =  TeamsViewController(team: leauge.teams,leagueViewModel: leagueViewModel)
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
 }
 
 
 
 
 
 
 
